require "./spec_helper"

module V4L2
  describe V4L2 do
    it "can inspect the device name" do
      vid = Video.new(LOOPBACK_DEVICE)
      details = vid.device_details
      (details.name.size > 0).should be_true
      details.name.should eq "Dummy video device (0x0000)"
    end

    it "can inspect the stream details" do
      vid = Video.new(LOOPBACK_DEVICE)
      format = vid.supported_formats[0]
      format.code.should eq "YUYV"
      format.description.should eq "YUYV 4:2:2"
      size = format.frame_sizes[0]
      size.width.should eq 640
      size.height.should eq 360
      size.frame_rate.fps.should eq 30
    end

    it "resets the buffer properly" do
      vid = Video.new(LOOPBACK_DEVICE)
      vid.buffer.index = 3_u32
      vid.buffer.index.should eq 3_u32
      vid.reset_buffer
      vid.buffer.index.should eq 0_u32
    end

    it "can stream and scale" do
      vid = Video.new(LOOPBACK_DEVICE)
      pixels = vid.supported_formats

      # grab the first available
      format = pixels[0].frame_sizes[0].frame_rate
      vid.set_format(format).request_buffers(2)

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

      (count > 1).should eq true

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

      File.exists?("./captured_frame.png").should eq true
    end
  end
end
