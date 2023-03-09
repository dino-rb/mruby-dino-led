module Dino
  class Led < PWMOut
    def initialize_pins(options={})
      super(options)
      self.mode = :output
      off
    end
  end
end
