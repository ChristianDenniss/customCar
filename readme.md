# carJetta

2017 vw jetta automatic. want to hack the factory touchscreen UI hard. keep the stock head unit, don't replace it with an aftermarket thing.

main thing is making the UI look / feel custom (icons, backgrounds, layouts, maybe deeper HMI stuff). maybe later throw a little animated character on it or whatever. that part's not the priority.

prefer actually getting into the OS / filesystem over just running someone else's theme installer. community tools are fine if they help get in or back things up.

---

## what i have

- windows laptop(Dell G15 5511) + wsl
- pico (rp2040): uart bridge experiments, 3.3v only
- sandisk cruzer spark 32gb usb
- random small tft for prototyping off-car
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
- https://github.com/mrlinuxpl/mib-std2-skins-customization (`.mcf` skins, unfinished)
- https://hackaday.io/project/203094-mib2-std-pq-reverse-engineering
- https://github.com/olli991/mib-std2-pq-zr-toolbox/discussions/686 (someone's 2017 jetta, train example `MST2_EU_VW_PQ_P0359T`, not mine)

---

## docs

working notes live under `docs/` (this readme stays at root):

- `plans/` what we're doing
- `decisions/` choices + why
- `findings/` what we learned
- `hardware/` part #s, pinouts, voltages
- `access/` how we get in
- `recovery/` how to get back to stock

start with `docs/plans/phase1/initial.md`. car / head unit specs live in `docs/hardware/vehicle.md`.

---

## next

1. get part # + software train from the car (settings -> system info, maybe hold MENU ~10s). no flashing anything.
2. set up a folder in wsl, clone the research repos, don't run their installers yet
3. figure out how people actually get files in/out of this exact unit
4. backup first, then swap one dumb icon and see if it sticks

pico stuff can happen off-car whenever.

---

## notes

obd-ii won't give me a shell. pico won't magically either. don't wire random pins without checking voltages.

leave engine/brakes/airbags alone. this is the radio computer.
