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

So multiple processes can access the video stream, it's useful to create a loopback device.

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
gst-launch-1.0 v4l2src device=/dev/video0 ! v4l2sink device=/dev/video2
```

See the specs for basic usage

```crystal
require "v4l2"
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
