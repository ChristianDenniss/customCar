# picos

four boards. all brand new / first use / blink confirmed. 3.3v only, not 5v tolerant. stay off the car.

unique id = flash chip id (shows up as usb serial). not the shared `Board-ID: RPI-RP2` from the bootloader text file.

## pico #1 (confirmed)

- connector: micro-usb (old samsung-style plug)
- chip: rp2040
- unique id:
- blink flash: done, onboard led blinking

## pico #2 (confirmed)

- connector: usb-c
- chip: rp2040
- unique id:
- blink flash: done, onboard led blinking

## pico #3 (confirmed)

- connector: micro-usb (old samsung-style plug)
- chip: rp2040
- unique id:
- blink flash: done, onboard led blinking

## pico #4 (confirmed)

- connector: usb-c
- chip: rp2040
- unique id:
- blink flash: done, onboard led blinking

## how to read unique id

one board at a time:

1. hold BOOTSEL, plug into laptop, release (RPI-RP2 drive shows)
2. run:

```powershell
powershell -ExecutionPolicy Bypass -File utils/pico/read-id.ps1
```

3. copy the `serial:` value into that pico's `unique id:` above
4. unplug, next board

## blink uf2

`utils/pico/blink_universal.uf2`

(from https://github.com/raspberrypi/pico-sdk-prebuilts)

how:

1. pico in bootloader mode (`RPI-RP2` drive showing)
2. drag the uf2 onto that drive
3. drive disappears, led blinks

if the drive is gone: hold BOOTSEL, plug usb, release, drag again.
