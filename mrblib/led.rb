module Dino
  class Led < PWMOut
    def initialize_pins(options={})
      super(options)
      off
    end
  end
end
