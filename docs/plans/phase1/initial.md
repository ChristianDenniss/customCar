# plan

phase 0 is desk hardware bring-up (see `docs/plans/phase0/hardware-bringup.md`).

writing the car bits away from the car. when i get at it, update `docs/hardware/vehicle.md` with real numbers.

rough order: don't flash / modify the **head unit** before it's identified. desk pico flashes are fine.

---

## phase 0: hardware bring-up

desk only. details in `phase0/hardware-bringup.md`.

- test picos, blink each, read unique ids, log them
- inventory the rest of the kit
- tfts optional / on hold (no solder, not needed for car UI)

---

## phase 1: identify the head unit

in the car, radio on.

- photo the home screen
- settings -> system information
- note part number, software version, software train if shown
- hold MENU ~10s for the service menu if available
- no updates, no coding, nothing writeable

drop the details in `docs/hardware/vehicle.md`. until that exists, later phases are provisional.

---

## phase 2: desk setup / research

no car needed (can overlap phase 0).

```bash
# from this repo (carJetta)
mkdir -p research backup dump custom firmware/{original,modified} scripts prototypes

sudo apt update
sudo apt install -y git file binutils python3 python3-pip unzip xxd

git clone https://github.com/olli991/mib-std2-pq-zr-toolbox.git research/mib-toolbox
git clone https://github.com/mrfixpl/mib-std2-skins-customization.git research/mib-skins
```

read the repos. don't run install/flash scripts yet.

---

## phase 3: match unit to a known path

once part # / train are real:

- manufacturer (technisat/preh, delphi, harman, other)
- toolbox support or not
- usb vs sd for file transfer
- documented uart / dump methods
- firmware packs + recovery options

notes go in `docs/findings/` and `docs/access/`. if toolbox doesn't apply, plan B is dump + offline.

---

## phase 4: read-only access

files out, not in.

least risky first:

1. stock service / engineering menus
2. documented usb/sd paths from the toolbox crowd
3. uart after voltages check out
4. pull the unit for eMMC / jtag only if needed

backup what you can. hashes. keep originals somewhere safe.

---

## phase 5: first small change

after a real backup + a known restore path:

1. extract assets / skins
2. change one small thing (single icon)
3. rebuild the package
4. deploy the recoverable way
5. confirm it boots and looks different

then skins / layout. hmi logic later. interactive extras after that.

---

## not yet

- buying more hardware (unless solder gear for optional tft fun)
- wiring a pico into the car
- firmware updates on the head unit
- replacing the head unit
- anything safety-related

---

## done when

stock screen and computer, custom UI, factory features still work.
