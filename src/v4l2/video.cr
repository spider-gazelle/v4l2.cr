require "./*"

class V4L2::Video
  # open the device
  # i.e. Path["/dev/video4"]
  def initialize(file : Path)
    # open file for write+read
    fd = LibC.open(file.to_s, LibC::O_RDWR)
    raise RuntimeError.from_errno("error opening device: #{file} (#{fd})") if fd < 0
    @io = IO::FileDescriptor.new(fd)
  end

  getter? streaming : Bool = false
  getter buffer : LibV4l2::Buffer = LibV4l2::Buffer.new
  getter buffers : Array(Pointer(Void))? = nil
  getter buffer_length : UInt32 = 0_u32

  def reset_buffer
    pointerof(@buffer).clear
    @buffer
  end

  def supported_formats(buffer_type : BufferType = BufferType::VIDEO_CAPTURE)
    description = LibV4l2::Fmtdesc.new
    description.type = buffer_type
    description.index = 0

    formats = [] of PixelFormat

    loop do
      ret = LibC.ioctl(@io.fd, VIDIOC_ENUM_FMT.to_u64, pointerof(description))
      break if ret < 0
      formats << PixelFormat.new(@io, description)
      description.index += 1
    end

    formats
  end

  def device_details
    capability = LibV4l2::Capability.new
    ret = LibC.ioctl(@io.fd, VIDIOC_QUERYCAP.to_u64, pointerof(capability))
    raise RuntimeError.from_errno "failed to obtain device details (#{ret})" if ret < 0
    DeviceDetails.new(capability)
  end

  def set_format(format_id : UInt32, width : UInt32, height : UInt32, buffer_type : BufferType = BufferType::VIDEO_CAPTURE)
    fmt = LibV4l2::Format.new
    fmt.type = buffer_type.value
    fmt.fmt.pix.width = width
    fmt.fmt.pix.height = height
    fmt.fmt.pix.pixelformat = format_id

    ret = LibC.ioctl(@io.fd, VIDIOC_S_FMT.to_u64, pointerof(fmt))
    if ret < 0
      code = PixelFormat.pixel_format_chars(format_id)
      raise RuntimeError.from_errno("failed to set video format: #{code} #{width}x#{height} (#{ret})")
    end
    self
  end

  def set_format(rate : V4L2::FrameRate, buffer_type : BufferType = BufferType::VIDEO_CAPTURE)
    set_format(
      rate.format_id,
      rate.width,
      rate.height,
      buffer_type
    )
  end

  def request_buffers(
    count : Int,
    buffer_type : BufferType = BufferType::VIDEO_CAPTURE,
    memory_type : Memory = Memory::MMAP
  )
    req_buff = LibV4l2::Requestbuffers.new
    req_buff.count = count.to_u32
    req_buff.type = buffer_type.value
    req_buff.memory = memory_type.value

    ret = LibC.ioctl(@io.fd, VIDIOC_REQBUFS.to_u64, pointerof(req_buff))
    if ret < 0
      raise RuntimeError.from_errno("failed to request buffers #{count}, #{buffer_type}, #{memory_type} (#{ret})")
    end

    case memory_type
    when .mmap?
      allocate_mmap_buffers(count, buffer_type)
    end

    self
  end

  def allocate_mmap_buffers(
    count : Int,
    buffer_type : BufferType = BufferType::VIDEO_CAPTURE
  )
    length = 0_u32
    buffers = (0...count).map do |index|
      buffer = reset_buffer
      buffer.type = buffer_type.value
      buffer.memory = Memory::MMAP.value
      buffer.index = index

      ret = LibC.ioctl(@io.fd, VIDIOC_QUERYBUF.to_u64, pointerof(buffer))
      raise RuntimeError.from_errno("failed to query buffer #{index} (#{ret})") if ret < 0

      pointer = LibC.mmap(nil, buffer.length, LibC::PROT_READ | LibC::PROT_WRITE, LibC::MAP_SHARED, @io.fd, buffer.m.offset)
      raise "Cannot allocate new video buffer" if pointer == LibC::MAP_FAILED

      ret = LibC.ioctl(@io.fd, VIDIOC_QBUF.to_u64, pointerof(buffer))
      raise RuntimeError.from_errno("failed to queue buffer #{index} (#{ret})") if ret < 0

      length = buffer.length
      pointer
    end

    @buffer_length = length
    @buffers = buffers
    self
  end

  def start_stream(buffer_type : BufferType = BufferType::VIDEO_CAPTURE)
    return self if @streaming
    type = buffer_type.value
    ret = LibC.ioctl(@io.fd, VIDIOC_STREAMON.to_u64, pointerof(type))
    raise RuntimeError.from_errno("stream failed to start (#{ret})") if ret < 0
    @streaming = true
    self
  end

  def stream(timeout : Time::Span = 2.seconds, buffer_type : BufferType = BufferType::VIDEO_CAPTURE, & : Bytes ->)
    buffers = @buffers
    raise "must allocate buffers" unless buffers

    start_stream(buffer_type) unless @streaming

    while @streaming && !@io.closed?
      @io.wait_readable timeout

      buffer = reset_buffer
      buffer.type = buffer_type.value
      buffer.memory = Memory::MMAP.value

      ret = LibC.ioctl(@io.fd, VIDIOC_DQBUF.to_u64, pointerof(buffer))
      if ret < 0
        raise "failed to dequeue buffer (#{ret})"
      end

      pointer = Pointer(UInt8).new(buffers[buffer.index].address)
      slice = Slice.new(pointer, buffer.length)
      yield slice

      ret = LibC.ioctl(@io.fd, VIDIOC_QBUF.to_u64, pointerof(buffer))
      if ret < 0
        raise "failed to queue buffer #{buffer.index} (#{ret})"
      end
    end
  rescue error
    if @streaming
      stop_stream
      raise error
    end
  end

  def stop_stream(buffer_type : BufferType = BufferType::VIDEO_CAPTURE)
    return self unless @streaming
    type = buffer_type.value
    ret = LibC.ioctl(@io.fd, VIDIOC_STREAMOFF.to_u64, pointerof(type))
    raise "stream failed to stop (#{ret})" if ret < 0
    @streaming = false
    self
  end

  def cleanup_buffers(buffers, length : UInt32)
    buffers.each do |pointer|
      LibC.munmap(pointer, length)
    end
  end

  def close
    if buffers = @buffers
      stop_stream
      cleanup_buffers(buffers, @buffer_length)
    end
    @io.close
  end

  def finalize
    close
  end

  def self.find_loopback_device : String?
    Dir.glob("/dev/video*").each do |dev_path|
      begin
        video = V4L2::Video.new(dev_path)
        begin
          return dev_path if video.device_details.card.downcase.includes?("dummy")
        ensure
          video.close
        end
      rescue error
        Log.warn { "unable to check device #{dev_path} (#{error.message})" }
      end
    end
    nil
  end
end
