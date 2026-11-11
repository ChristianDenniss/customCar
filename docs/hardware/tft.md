# tft displays

two identical boards. brand new / first use. not the jetta screen.

## role

learning / fun side experiment (pico + SPI display). not required for jetta UI work. laptop screen is enough for skin/layout prototyping.

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

power from pico `3V3(OUT)` only. no 5v on VCC or data pins.

## pico wiring (when i solder a header)

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

on hold. have the 8-pin header, no soldering gear. not wiring or powering until then.

labels + ST7789 already confirmed. when unblocked: solder header -> wire -> ST7789 driver -> colour test -> simple graphics.
