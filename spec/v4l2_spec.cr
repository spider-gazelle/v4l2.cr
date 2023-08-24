require "./spec_helper"

module V4L2
  describe V4L2 do
    it "loads the library and runs some functions" do
      LibV4l2::CreateBuffers.new
      vid = Video.new(Path["/dev/video0"])
      pixels = vid.supported_formats
      pixels.each(&.frame_sizes.each(&.frame_rate))
      pp! pixels
    end

    it "resets the buffer properly" do
      vid = Video.new(Path["/dev/video0"])
      vid.buffer.index = 3_u32
      vid.buffer.index.should eq 3_u32
      vid.reset_buffer
      vid.buffer.index.should eq 0_u32
    end

    it "gets the device name" do
      vid = Video.new(Path["/dev/video0"])
      details = vid.device_details
      (details.name.size > 0).should be_true
    end

    it "can stream and scale" do
      vid = Video.new(Path["/dev/video0"])
      pixels = vid.supported_formats
      pixels.each(&.frame_sizes.each(&.frame_rate))

      # highest resolution + framerate combo
      format = pixels[1].frame_sizes[1].frame_rate
      vid.set_format(format).request_buffers(1)

      # setup the ffmpeg image format conversion
      # v4l2_frame = FFmpeg::Frame.new(format.width, format.height, :yuyv422)
      rgb_frame = FFmpeg::Frame.new(format.width, format.height, :rgb48Le)
      # convert = FFmpeg::SWScale.new(v4l2_frame, rgb_frame)
      convert = FFmpeg::SWScale.new(format.width, format.height, :yuyv422, output_format: :rgb48Le)

      spawn do
        sleep 3
        vid.stop_stream
      end

      count = 0
      vid.stream do |buffer|
        print '+'
        count += 1

        # process the frame using ffmpeg / libav
        # creating new frame using this buffer is faster than copying
        # buffer.copy_to v4l2_frame.buffer
        v4l2_frame = FFmpeg::Frame.new(format.width, format.height, :yuyv422, buffer: buffer)
        convert.scale(v4l2_frame, rgb_frame)
      end

      (count > 0).should eq true

      # save the last frame using stumpy png
      pixel_components = format.width * format.height * 3
      pointer = Pointer(UInt16).new(rgb_frame.buffer.to_unsafe.address)
      frame_buffer = Slice.new(pointer, pixel_components)

      canvas = StumpyCore::Canvas.new(format.width.to_i, format.height.to_i)
      canvas.pixels.size.times do |index|
        idx = index * 3
        r = frame_buffer[idx]
        g = frame_buffer[idx + 1]
        b = frame_buffer[idx + 2]
        canvas.pixels[index] = StumpyCore::RGBA.new(r, g, b)
      end
      StumpyPNG.write(canvas, "./captured_frame.png")
    end
  end
end
