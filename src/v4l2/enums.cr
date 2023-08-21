module V4L2
  enum BufferType : UInt32
    VIDEO_CAPTURE        =    1
    VIDEO_OUTPUT         =    2
    VIDEO_OVERLAY        =    3
    VBI_CAPTURE          =    4
    VBI_OUTPUT           =    5
    SLICED_VBI_CAPTURE   =    6
    SLICED_VBI_OUTPUT    =    7
    VIDEO_OUTPUT_OVERLAY =    8
    VIDEO_CAPTURE_MPLANE =    9
    VIDEO_OUTPUT_MPLANE  =   10
    SDR_CAPTURE          =   11
    SDR_OUTPUT           =   12
    META_CAPTURE         =   13
    META_OUTPUT          =   14
    PRIVATE              = 0x80
  end

  enum FrameSizeType : UInt32
    DISCRETE   = 1 # width and height
    CONTINUOUS = 2 # any resolution between max width and height
    STEPWISE   = 3 # min to max with step specified
  end

  enum FrameIntervalType : UInt32
    DISCRETE   = 1 # fixed frame rate
    CONTINUOUS = 2 # variable frame rate
    STEPWISE   = 3 # variable frame rate with discrete steps
  end

  enum Memory
    MMAP    = 1
    USERPTR = 2
    OVERLAY = 3
    DMABUF  = 4
  end
end
