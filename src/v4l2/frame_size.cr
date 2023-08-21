require "./frame_rate"

class V4L2::FrameSize
  def initialize(@io : IO::FileDescriptor, @format_id : UInt32, size : LibV4l2::Frmsizeenum)
    @type = type = FrameSizeType.from_value(size.type)
    case type
    in .discrete?
      @max_width = size.frmsize.discrete.width
      @max_height = size.frmsize.discrete.height
    in .continuous?
      @min_width = size.frmsize.stepwise.min_width
      @min_height = size.frmsize.stepwise.min_height
      @max_width = size.frmsize.stepwise.max_width
      @max_height = size.frmsize.stepwise.max_height
    in .stepwise?
      @min_width = size.frmsize.stepwise.min_width
      @min_height = size.frmsize.stepwise.min_height
      @max_width = size.frmsize.stepwise.max_width
      @max_height = size.frmsize.stepwise.max_height
      @step_width = size.frmsize.stepwise.step_width
      @step_height = size.frmsize.stepwise.step_height
    end
  end

  getter format_id : UInt32
  getter type : FrameSizeType
  getter min_width : UInt32 = 0_u32
  getter max_width : UInt32 = 0_u32
  getter step_width : UInt32 = 0_u32
  getter min_height : UInt32 = 0_u32
  getter max_height : UInt32 = 0_u32
  getter step_height : UInt32 = 0_u32

  getter frame_rate : FrameRate do
    frame_rate(@max_width, @max_height)
  end

  def frame_rate(width : UInt32, height : UInt32)
    ival = LibV4l2::Frmivalenum.new
    ival.pixel_format = @format_id
    ival.width = width
    ival.height = height
    ival.index = 0

    ret = LibC.ioctl(@io.fd, VIDIOC_ENUM_FRAMEINTERVALS.to_u64, pointerof(ival))
    raise "unable to determine frame rate for #{width}x#{height}: #{ret}" if ret < 0
    FrameRate.new(ival)
  end

  def width
    @max_width
  end

  def height
    @max_height
  end
end
