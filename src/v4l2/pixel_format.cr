require "./frame_size"

class V4L2::PixelFormat
  def initialize(@io : IO::FileDescriptor, format : LibV4l2::Fmtdesc)
    @id = format.pixelformat
    @code = PixelFormat.pixel_format_chars(format.pixelformat)
    @index = format.index
    @buffer = BufferType.from_value(format.type)

    desc = format.description.to_slice
    str_end = desc.index(&.zero?)
    @description = String.new(desc[0...str_end])
  end

  getter id : UInt32
  getter code : String
  getter index : UInt32
  getter buffer : BufferType
  getter description : String

  getter frame_sizes : Array(FrameSize) do
    size = LibV4l2::Frmsizeenum.new
    size.pixel_format = @id
    size.index = 0

    sizes = [] of FrameSize

    loop do
      ret = LibC.ioctl(@io.fd, VIDIOC_ENUM_FRAMESIZES.to_u64, pointerof(size))
      break if ret < 0
      sizes << FrameSize.new(@io, @id, size)
      size.index += 1
    end

    sizes
  end

  def self.pixel_format_chars(pixelformat : UInt32)
    String.build do |str|
      str << (pixelformat & 0xFF).chr
      3.times do
        pixelformat = pixelformat >> 8
        str << (pixelformat & 0xFF).chr
      end
    end
  end
end
