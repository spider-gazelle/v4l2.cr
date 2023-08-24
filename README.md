# Crystal Video for Linux 2 bindings

Basic v4l2 bindings for extracting frames as close to realtime from a video device on linux

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     v4l2:
       github: spider-gazelle/v4l2.cr
   ```

2. Run `shards install`

## Usage

Capture frames with the lowest possible latency

```crystal
# low latency device access
require "v4l2"
# use libav for converting the frames to a useable format
require "ffmpeg"

# grab a handle to the device
video = Video.new(Path["/dev/video0"])

# you can then grab the names of the devices
details = video.device_details
details.name # => "USB2.0 HD UVC WebCam: USB2.0 HD"

# You can grab the supported formats, resolutions and frame rates
formats = vid.supported_formats
formats.each(&.frame_sizes.each(&.frame_rate))

# Once you've selected the appropriate configuration you can set it
# this is the optimal selection for me (YUYV 4:2:2 - 640x480 @ 30fps)
format = pixels[1].frame_sizes[1].frame_rate
video.set_format(format)

# then you need to configure how many buffers you need
# once all your buffers are full it starts dropping frames
# set to 1 if you only want the most up to date frame
video.request_buffers(1)

# configure the desired output format
rgb_frame = FFmpeg::Frame.new(format.width, format.height, :rgb48Le)
convert = FFmpeg::SWScale.new(format.width, format.height, :yuyv422, output_format: :rgb48Le)

# now you can start processing frames
video.stream do |buffer|
  # buffer is returned to the driver when this block returns
  # so either perform processing here or copy the Bytes

  # process the video
  v4l2_frame = FFmpeg::Frame.new(format.width, format.height, :yuyv422, buffer: buffer)
  convert.scale(v4l2_frame, rgb_frame)

  # channel.send rgb_frame
end
```

So multiple processes can access the video stream, it's useful to create a loopback device (if you have issues with this)

* 1 process for processing images
* 1 process for viewing the stream etc

```shell
# install loopback device
sudo apt install v4l2loopback-dkms
sudo modprobe v4l2loopback

# to determine which device is the loopback:
sudo apt-get install v4l-utils
v4l2-ctl --list-devices
# look for the Dummy video device

# stream the video to the loopback (for low latency multiple app access)
ffmpeg -f v4l2 -i /dev/video0 -f v4l2 /dev/video4
# OR
gst-launch-1.0 v4l2src device=/dev/video0 ! v4l2sink device=/dev/video4

# we can specify the format and resolution to forward
ffmpeg -f v4l2 -input_format yuyv422 -video_size 1280x720 -i /dev/video0 -c:v copy -f v4l2 /dev/video4
```

## Development

To generate v4l2 bindings `./generate_bindings.sh`

### lib installation

* `sudo apt-get install libv4l-dev`

## Contributing

1. Fork it (<https://github.com/spider-gazelle/v4l2.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

* [Stephen von Takach](https://github.com/stakach) - creator and maintainer
