# 001: hold tft until solder gear

## decision

don't wire/power the ST7789 tfts until the 8-pin header is soldered (or a pre-soldered panel shows up).

learning / fun only. not needed for jetta UI prototyping.

## why

- empty holes, header not attached
- no soldering gear
- press-fit is too flaky for SPI
- main project doesn't need these panels

## revisit

iron + solder, or pre-soldered panel.

see `docs/hardware/tft.md`
