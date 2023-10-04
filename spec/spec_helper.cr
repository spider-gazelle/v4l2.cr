require "spec"
require "http"
require "ffmpeg"
require "stumpy_png"
require "../src/v4l2"

# the video file we'll use for testing
video_file = "./test.mp4"
unless File.exists? video_file
  puts "downloading video file..."
  HTTP::Client.get("https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_5MB.mp4") do |response|
    raise "could not found video file" unless response.success?
    File.write(video_file, response.body_io)
  end
end

# ensure we have a loopback device
loopback = V4L2::Video.enumerate_loopback_devices.first?
raise "no loopback running. run 'sudo modprobe v4l2loopback'" unless loopback
LOOPBACK_DEVICE = V4L2::Video.enumerate_loopback_devices.first?.as(Path)

# push a video to the loopback device for
wait_running = Channel(Process).new
spawn do
  Process.run("ffmpeg", {
    "-stream_loop", "-1", "-re", "-i", video_file,
    "-f", "v4l2", "-vcodec", "rawvideo",
    "-pix_fmt", "yuyv422", LOOPBACK_DEVICE.to_s,
  }) do |process|
    wait_running.send process
  end
end

# terminate ffmpeg once the spec has finished
select
when process = wait_running.receive
  # ensure the process exits once the spec has run
  Spec.after_suite { process.terminate }
  sleep 1
when timeout(5.seconds)
  raise "timeout waiting for ffmpeg to launch"
end
