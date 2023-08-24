class V4L2::DeviceDetails
  def initialize(@capability : LibV4l2::Capability)
    capability = @capability

    str = capability.driver.to_slice
    str_end = str.index(&.zero?)
    @driver = String.new(str[0...str_end])

    str = capability.card.to_slice
    str_end = str.index(&.zero?)
    @card = String.new(str[0...str_end])

    str = capability.bus_info.to_slice
    str_end = str.index(&.zero?)
    @bus_info = String.new(str[0...str_end])
  end

  getter driver : String
  getter card : String
  getter bus_info : String

  def name
    card
  end

  def version
    @capability.version
  end

  def capabilities
    @capability.capabilities
  end

  def device_caps
    @capability.device_caps
  end
end
