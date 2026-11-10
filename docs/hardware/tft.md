# tft displays

two identical boards. brand new / first use. not the jetta screen.

## role

learning / fun side experiment (pico + SPI display). **not required** for jetta UI work. laptop screen is enough for skin/layout prototyping. these don't block the main project.

## board

- qty: 2
- 1.54" tft lcd
- 240 x 240
- controller: ST7789 (printed on back: `1.54TFT-SPI-ST7789` / `Ver:1.1`)
- interface: SPI
- blue pcb, 8 connections
- pin labels left -> right: `GND VCC SCL SDA RST DC CS BL`
- no voltage marking near VCC
- header: empty holes only (nothing soldered yet)
- not electrically tested yet

SDA here = SPI MOSI, not i2c. board says `RST` (not RES).

power plan: use pico `3V3(OUT)` only. no 5v on VCC or data pins.

## proposed pico wiring (after soldering a header)

| tft | pico | physical pin | notes |
| --- | --- | --- | --- |
| GND | GND | 23 | ground |
| VCC | 3V3(OUT) | 36 | power |
| SCL | GP18 | 24 | spi clock |
| SDA | GP19 | 25 | spi mosi |
| RST | GP20 | 26 | reset |
| DC | GP21 | 27 | data/command |
| CS | GP17 | 22 | chip select |
| BL | leave open first | - | may need 3v3 later if panel stays dark |

any of my four verified picos is fine.

## status

**on hold.** have the 8-pin header that came with it, but no soldering equipment right now. empty holes won't make a reliable SPI connection without solder, so not wiring or powering this yet.

resume when i have an iron (or a pre-soldered panel).

## next (when unblocked)

1. ~~confirm the 8 labels~~ done
2. ~~controller~~ ST7789 confirmed on silkscreen
3. solder the 8-pin header into the empty holes
4. wire to one pico with the table above (3v3 only)
5. micropython ST7789 driver (or equivalent)
6. colour test: red / green / blue / white / black
7. then text + simple graphics

## goal (optional)

eventually get a panel working on a pico (colour test, then simple graphics) for embedded practice. again: optional, not part of the car UI path.

## blocker

no soldering equipment. header is here; just can't attach it yet.
