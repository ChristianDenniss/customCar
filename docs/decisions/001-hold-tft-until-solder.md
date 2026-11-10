# 001: hold tft until solder gear

**status:** accepted  
**when:** early desk setup (picos blink-verified, tft identified, not wired)

## decision

park the ST7789 tfts for now. don't wire or power them until i can solder the 8-pin header (or get a pre-soldered panel).

also: these are learning / fun only. not needed for jetta UI prototyping (laptop screen covers that).

## why

- board has empty holes only; header is included but not attached
- no soldering equipment on hand
- press-fit / no-solder contact is too flaky for SPI
- main project doesn't depend on these panels anyway

## not doing

- treating the tfts as a blocker for car work
- buying more displays just to dodge soldering (unless that ends up cheaper/easier later)
- hacking temporary contacts for a fake "first light"

## revisit when

iron + solder available, or a pre-soldered equivalent shows up.

details: `docs/hardware/tft.md`
