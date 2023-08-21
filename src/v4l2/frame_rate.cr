require "big"

class V4L2::FrameRate
  def initialize(rate : LibV4l2::Frmivalenum)
    @type = type = FrameIntervalType.from_value(rate.type)
    @format_id = rate.pixel_format
    @height = rate.height
    @width = rate.width

    case type
    in .discrete?
      frac = rate.frmival.discrete
      @max = BigRational.new(frac.numerator, frac.denominator)
    in .continuous?
      frac = rate.frmival.stepwise.max
      @max = BigRational.new(frac.numerator, frac.denominator)

      frac = rate.frmival.stepwise.min
      @min = BigRational.new(frac.numerator, frac.denominator)
    in .stepwise?
      frac = rate.frmival.stepwise.max
      @max = BigRational.new(frac.numerator, frac.denominator)

      frac = rate.frmival.stepwise.min
      @min = BigRational.new(frac.numerator, frac.denominator)

      frac = rate.frmival.stepwise.step
      @step = BigRational.new(frac.numerator, frac.denominator)
    end
  end

  getter format_id : UInt32
  getter width : UInt32
  getter height : UInt32

  getter type : FrameIntervalType

  getter max : BigRational
  getter min : BigRational = BigRational.new(1.to_big_i, 1.to_big_i)
  getter step : BigRational = BigRational.new(1.to_big_i, 1.to_big_i)

  def fps : Float64
    if max.numerator.to_i == 1
      max.denominator.to_f64
    else
      max.denominator.to_i / max.numerator.to_i
    end
  end
end
