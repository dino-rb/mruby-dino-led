class RGBLed
  include Pins::MultiPin
  def initialize_pins(options={})
    proxy_pin :red,     Led
    proxy_pin :green,   Led
    proxy_pin :blue,    Led
  end

  # Format: [R, G, B]
  COLORS = {
    red:     [255, 000, 000],
    green:   [000, 255, 000],
    blue:    [000, 000, 255],
    cyan:    [000, 255, 255],
    yellow:  [255, 255, 000],
    magenta: [255, 000, 255],
    white:   [255, 255, 255],
    off:     [000, 000, 000]
  }

  def write(array)
    proxies[:red].write   array[0]
    proxies[:green].write array[1]
    proxies[:blue].write  array[2]
  end

  def color=(color)
    return write(color) if color.class == Array

    color = color.to_sym
    write(COLORS[color]) if COLORS.include? color
  end
end