# carJetta

2017 vw jetta automatic. want to hack the factory touchscreen UI hard. keep the stock head unit, don't replace it with an aftermarket thing.

main thing is making the UI look / feel custom (icons, backgrounds, layouts, maybe deeper HMI stuff). maybe later throw a little animated character on it or whatever. that part's not the priority.

prefer actually getting into the OS / filesystem over just running someone else's theme installer. community tools are fine if they help get in or back things up.

---

## what i have

- windows laptop (Dell G15 5511) + wsl
- 4x pico rp2040 -> details in `docs/hardware/pico.md`
- micro-usb + usb-c cables (for the two pico connector types)
- 2x 1.54" ST7789 tft (learning/fun only, on hold) -> `docs/hardware/tft.md`
- sandisk cruzer spark 32gb usb
- usb-c hub

no esp32. don't buy more junk until i know what head unit this actually is. full soc not necessary.

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

plans: phase0 bring-up, phase1 first access + tiny change, phase2 real ui customization. car specs: `docs/hardware/vehicle.md`.

---

## next

1. phase 0: finish pico unique ids
2. phase 1 step 1: head unit part # / train from the car
3. keep going through the phase 1 steps

---

## notes

obd-ii won't give me a shell. pico won't magically either. don't wire random pins without checking voltages.

leave engine/brakes/airbags alone. this is the radio computer.
