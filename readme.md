# carJetta

2017 vw jetta automatic. want to hack the factory touchscreen UI hard. keep the stock head unit, don't replace it with an aftermarket thing.

main thing is making the UI look / feel custom (icons, backgrounds, layouts, maybe deeper HMI stuff). maybe later throw a little animated character on it or whatever. that part's not the priority.

prefer actually getting into the OS / filesystem over just running someone else's theme installer. community tools are fine if they help get in or back things up.

---

## what i have

- windows laptop(Dell G15 5511) + wsl
- pico #1 (rp2040, micro-usb): blink confirmed, 3.3v only
- pico #2 (rp2040, usb-c): blink confirmed, 3.3v only
- pico #3 (rp2040, micro-usb): blink confirmed, 3.3v only
- pico #4 (rp2040, usb-c): blink confirmed, 3.3v only
- sandisk cruzer spark 32gb usb
- 2x 1.54" 240x240 tft (ST7789 SPI; learning/fun only, not needed for UI prototyping; on hold for solder, see `docs/hardware/tft.md`)
- usb-c hub (this definetly needed to be listed)

no esp32. don't buy more junk until i know what head unit this actually is and i dont think a full soc is nessecary

---

## what i don't know yet

basically everything about the unit:

- manufacturer / part number
- firmware train
- os
- whether toolbox / sd / uart even apply

looks like mib2 from what i've seen. maybe technisat/preh. maybe not. need system info screenshots.

---

## useful links

- https://github.com/olli991/mib-std2-pq-zr-toolbox
- https://github.com/mrfixpl/mib-std2-skins-customization (`.mcf` skins, unfinished)
- https://hackaday.io/project/203094-mib2-std-pq-reverse-engineering
- https://github.com/olli991/mib-std2-pq-zr-toolbox/discussions/686 (someone's 2017 jetta, train example `MST2_EU_VW_PQ_P0359T`, not mine)

---

## docs

working notes live under `docs/` (this readme stays at root):

- `plans/` what i'm doing
- `decisions/` choices + why
- `findings/` what i learned
- `hardware/` part #s, pinouts, voltages
- `access/` how i get in
- `recovery/` how to get back to stock

working files (toolbox-style):

- `dump/` pulled from the unit
- `custom/` modified stuff to put back
- `backup/` originals / restore copies
- `firmware/` bigger images if i ever dump eMMC
- `utils/` handy binaries (pico uf2s, etc)

start with `docs/plans/phase0/hardware-bringup.md`, then `docs/plans/phase1/initial.md`. car / head unit specs live in `docs/hardware/vehicle.md`.

---

## next

1. **phase 0:** finish pico unique ids (BOOTSEL + `utils/pico/read-id.ps1`), log in `docs/hardware/pico.md`
2. **phase 1:** part # + software train from the car (settings -> system info, maybe hold MENU ~10s). no head-unit flashing.
3. match this unit to a real file in/out path
4. backup first, then swap one small icon and see if it sticks

---

## notes

obd-ii won't give me a shell. pico won't magically either. don't wire random pins without checking voltages.

leave engine/brakes/airbags alone. this is the radio computer.
