require "log"
require "./v4l2/lib_c"
require "./v4l2/lib_v4l2"

# Video 4 Linux 2
module V4L2
  # :nodoc:
  Log = ::Log.for("v4l2")

  {% begin %}
    VERSION = {{ `shards version "#{__DIR__}"`.chomp.stringify.downcase }}
  {% end %}

  def self.ioc(direction : UInt32, type : UInt32, nr : UInt32, size : UInt32) : UInt32
    ((direction << LibC::IOC_DIRSHIFT) |
      (type << LibC::IOC_TYPESHIFT) |
      (nr << LibC::IOC_NRSHIFT) |
      (size << LibC::IOC_SIZESHIFT))
  end

  # IOWR(type,nr,size) IOC(IOC_READ|IOC_WRITE,(type),(nr),(IOC_TYPECHECK(size)))
  def self.iorw(type : Char, nr : Int, size : Int) : UInt32
    ioc(LibC::IOC_READ | LibC::IOC_WRITE, type.ord.to_u32, nr.to_u32, size.to_u32)
  end

  # IOW(type,nr,size) IOC(IOC_WRITE,(type),(nr),(IOC_TYPECHECK(size)))
  def self.iow(type : Char, nr : Int, size : Int)
    ioc(LibC::IOC_WRITE, type.ord.to_u32, nr.to_u32, size.to_u32)
  end

  VIDIOC_S_FMT               = V4L2.iorw('V', 5, sizeof(LibV4l2::Format))
  VIDIOC_ENUM_FMT            = V4L2.iorw('V', 2, sizeof(LibV4l2::Fmtdesc))
  VIDIOC_ENUM_FRAMESIZES     = V4L2.iorw('V', 74, sizeof(LibV4l2::Frmsizeenum))
  VIDIOC_ENUM_FRAMEINTERVALS = V4L2.iorw('V', 75, sizeof(LibV4l2::Frmivalenum))

  VIDIOC_REQBUFS  = V4L2.iorw('V', 8, sizeof(LibV4l2::Requestbuffers))
  VIDIOC_QUERYBUF = V4L2.iorw('V', 9, sizeof(LibV4l2::Buffer))
  VIDIOC_QBUF     = V4L2.iorw('V', 15, sizeof(LibV4l2::Buffer))
  VIDIOC_DQBUF    = V4L2.iorw('V', 17, sizeof(LibV4l2::Buffer))

  VIDIOC_STREAMON  = V4L2.iow('V', 18, sizeof(Int32))
  VIDIOC_STREAMOFF = V4L2.iow('V', 19, sizeof(Int32))

  def self.v4l2_fourcc(a : Char, b : Char, c : Char, d : Char) : UInt32
    v4l2_fourcc(a.ord.to_u32, b.ord.to_u32, c.ord.to_u32, d.ord.to_u32)
  end

  def self.v4l2_fourcc(a : UInt32, b : UInt32, c : UInt32, d : UInt32) : UInt32
    a | (b << 8) | (c << 16) | (d << 24)
  end

  def self.v4l2_fourcc_be(a : Char, b : Char, c : Char, d : Char) : UInt32
    v4l2_fourcc_be(a.ord.to_u32, b.ord.to_u32, c.ord.to_u32, d.ord.to_u32)
  end

  def self.v4l2_fourcc_be(a : UInt32, b : UInt32, c : UInt32, d : UInt32) : UInt32
    v4l2_fourcc(a, b, c, d) | (1_u32 << 31)
  end
end

require "./v4l2/*"
