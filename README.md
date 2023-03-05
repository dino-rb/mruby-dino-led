# mruby-dino-led

LED classes for [mruby-dino](https://github.com/dino-rb).

### Classes Features Not Implemented Yet

* SSD

### Key Differences

* There is no `Board` class, or `board:` requirement to initialize a component. Might add as an option to set up LEDs through registers later on.
* `Led#blink` doesn't work. No threading.