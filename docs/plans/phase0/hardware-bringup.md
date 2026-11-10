# phase 0: hardware bring-up

desk only. no car. prove the kit works and label it before any vehicle work.

## goals

- test each pico (usb mount / bootsel)
- flash blink on each
- read unique id (flash / usb serial) for each
- log connector type + id in `docs/hardware/pico.md`
- note other kit (usb stick, hub, tfts) without blocking on optional stuff

## checklist

### picos

| # | connector | blink | unique id logged |
| --- | --- | --- | --- |
| 1 | micro-usb | done | pending |
| 2 | usb-c | done | pending |
| 3 | micro-usb | done | pending |
| 4 | usb-c | done | pending |

how to read id (one board at a time):

1. hold BOOTSEL, plug in, release
2. `powershell -ExecutionPolicy Bypass -File utils/pico/read-id.ps1`
3. paste `serial:` into `docs/hardware/pico.md`

blink uf2: `utils/pico/blink_universal.uf2`

### other kit

- sandisk usb: on hand (format later if needed)
- usb-c hub: on hand
- 2x tft: identified (ST7789), **on hold** (no solder) / optional learning only -> see decision `001`

## status

picos blink-confirmed. unique ids still to capture. tfts parked on purpose.

## done when

all four pico unique ids are in `docs/hardware/pico.md`. then phase 1 (head unit id) can be the focus when at the car.
