# picos

four boards. brand new / first use. blink ok. 3.3v only, not 5v tolerant. stay off the car.

unique id = flash chip id (usb serial). not the shared `Board-ID: RPI-RP2` from the bootloader file.

## pico #1

- connector: micro-usb
- chip: rp2040
- unique id: TBD
- blink: yes

## pico #2

- connector: usb-c
- chip: rp2040
- unique id: TBD
- blink: yes

## pico #3

- connector: micro-usb
- chip: rp2040
- unique id: TBD
- blink: yes

## pico #4

- connector: usb-c
- chip: rp2040
- unique id: TBD
- blink: yes

## how to read unique id

one board at a time:

1. hold BOOTSEL, plug in, release
2. `powershell -ExecutionPolicy Bypass -File utils/pico/read-id.ps1`
3. put `serial:` into that pico's unique id above

## blink uf2

`utils/pico/blink_universal.uf2`

(from https://github.com/raspberrypi/pico-sdk-prebuilts)

1. bootsel mode (`RPI-RP2` drive)
2. drag uf2 onto it
3. led blinks
