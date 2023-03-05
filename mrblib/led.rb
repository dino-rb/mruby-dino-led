class Led < Pins::PWMOutput
  def initialize_pins(options={})
    super(options)
    self.mode = :output
    off
  end
end
