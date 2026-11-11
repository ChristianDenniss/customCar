# phase 0: hardware bring-up

desk only. no car. prove the kit works and label it before any vehicle work.

## steps

1. get all parts assembled / collected at the desk
2. make sure both cable types are here: **micro-usb** (for pico #1 / #3) and **usb-c** (for pico #2 / #4)
3. test each pico (usb mount / bootsel)
4. flash blink on each
5. read unique id (flash / usb serial) for each
6. log connector type + id in `docs/hardware/pico.md`
7. note other kit (usb stick, hub, tfts) without blocking on optional stuff

### pico id how-to

one board at a time:

1. hold BOOTSEL, plug in, release
2. `powershell -ExecutionPolicy Bypass -File utils/pico/read-id.ps1`
3. paste `serial:` into `docs/hardware/pico.md`

blink uf2: `utils/pico/blink_universal.uf2`

| # | connector | blink | unique id logged |
| --- | --- | --- | --- |
| 1 | micro-usb | done | pending |
| 2 | usb-c | done | pending |
| 3 | micro-usb | done | pending |
| 4 | usb-c | done | pending |

### other kit

- micro-usb cable: needed for pico #1 / #3
- usb-c cable: needed for pico #2 / #4
- sandisk usb: on hand
- usb-c hub: on hand
- 2x tft: identified, on hold / optional -> decision `001`

## status

picos blink-confirmed. unique ids still to capture. tfts parked.

phase 0 done when all four ids are in `docs/hardware/pico.md`.
