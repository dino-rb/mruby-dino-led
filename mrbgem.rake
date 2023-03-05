require_relative "mrblib/version"

MRuby::Gem::Specification.new('mruby-dino-led') do |spec|
  spec.license = 'MIT'
  spec.authors = 'vickash'
  spec.version = Dino::Led::VERSION
  
  # spec.add_dependency('mruby-dino-core-esp32', github: 'dino-rb/mruby-dino-core-esp32')

  # Include files in the right order.
  spec.rbfiles = [
    "#{dir}/mrblib/led.rb",
    "#{dir}/mrblib/rgb_led.rb",
    "#{dir}/mrblib/ssd.rb",
  ]
end