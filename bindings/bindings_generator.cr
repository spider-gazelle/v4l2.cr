@[Include(
  "linux/videodev2.h",
  prefix: %w(V4L2_ V4L2_ v4l2_)
)]
@[Link("v4l2")]
lib LibV4l2
end
