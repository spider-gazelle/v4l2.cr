lib LibC
  IOC_NRBITS    =  8
  IOC_TYPEBITS  =  8
  IOC_SIZEBITS  = 14
  IOC_DIRBITS   =  2
  IOC_NRMASK    = ((1 << IOC_NRBITS) - 1)
  IOC_TYPEMASK  = ((1 << IOC_TYPEBITS) - 1)
  IOC_SIZEMASK  = ((1 << IOC_SIZEBITS) - 1)
  IOC_DIRMASK   = ((1 << IOC_DIRBITS) - 1)
  IOC_NRSHIFT   = 0
  IOC_TYPESHIFT = (IOC_NRSHIFT + IOC_NRBITS)
  IOC_SIZESHIFT = (IOC_TYPESHIFT + IOC_TYPEBITS)
  IOC_DIRSHIFT  = (IOC_SIZESHIFT + IOC_SIZEBITS)
  IOC_NONE      = 0_u32
  IOC_WRITE     = 1_u32
  IOC_READ      = 2_u32

  fun ioctl(fd : Int, request : ULong, ...) : Int
end
