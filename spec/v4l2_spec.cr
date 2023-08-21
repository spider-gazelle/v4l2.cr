require "./spec_helper"

module V4L2
  describe V4L2 do
    it "loads the library and runs some functions" do
      buff = LibV4l2::CreateBuffers.new
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

    it "can stream" do
      vid = Video.new(Path["/dev/video0"])
      pixels = vid.supported_formats
      pixels.each(&.frame_sizes.each(&.frame_rate))

      # highest resolution + framerate combo
      format = pixels[1].frame_sizes[1].frame_rate
      vid.set_format(format).request_buffers(2).allocate_mmap_buffers(2).start_stream

      spawn do
        sleep 3
        vid.stop_stream
      end

      count = 0
      vid.raw_stream do |buffer, size|
        print '+'
        count += 1
      end

      (count > 0).should eq true
    end
  end
end
