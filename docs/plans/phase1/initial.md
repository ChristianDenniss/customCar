# phase 1: initial plan

writing the car bits away from the car. when i get at it, update `docs/hardware/vehicle.md` with real numbers.

rough order: don't flash / modify the **head unit** before it's identified. desk pico flashes are fine.

phase 0 (hardware bring-up) is separate: `../phase0/hardware-bringup.md`.

---

## steps

### step 1: identify the head unit

in the car, radio on.

1. photo the home screen
2. settings -> system information
3. note part number, software version, software train if shown
4. hold MENU ~10s for the service menu if available
5. no updates, no coding, nothing writeable

drop the details in `docs/hardware/vehicle.md`. later steps stay provisional until that exists.

### step 2: desk setup / research

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

### step 3: match unit to a known path

once part # / train are real:

- manufacturer (technisat/preh, delphi, harman, other)
- toolbox support or not
- usb vs sd for file transfer
- documented uart / dump methods
- firmware packs + recovery options

notes go in `docs/findings/` and `docs/access/`. if toolbox doesn't apply, plan B is dump + offline.

### step 4: read-only access

files out, not in.

least risky first:

1. stock service / engineering menus
2. documented usb/sd paths from the toolbox crowd
3. uart after voltages check out
4. pull the unit for eMMC / jtag only if needed

backup what you can. hashes. keep originals somewhere safe.

### step 5: first small change

after a real backup + a known restore path:

1. extract assets / skins
2. change one small thing (single icon)
3. rebuild the package
4. deploy the recoverable way
5. confirm it boots and looks different

after that -> phase 2 (`../phase2/ui-customization.md`).

---

## not yet

- buying more hardware (unless solder gear for optional tft fun)
- wiring a pico into the car
- firmware updates on the head unit
- replacing the head unit
- anything safety-related

---

## done when

head unit identified, got a real access path, backup exists, and one small reversible ui change stuck. heavier customization is phase 2.
