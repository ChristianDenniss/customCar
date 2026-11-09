# plan

writing this away from the car. when i actually get at it, update the hardware docs with real numbers instead of guessing from this.

rough order: don't flash anything before the unit is identified.

---

## phase 0: identify the head unit

in the car, radio on.

- photo the home screen
- settings -> system information
- note part number, software version, software train if shown
- hold MENU ~10s for the service menu if available
- no updates, no coding, nothing writeable

drop the details in `docs/hardware/`. until that exists, later phases are provisional.

---

## phase 1: desk setup

no car needed.

```bash
# from this repo (carJetta)
mkdir -p research backup dump custom firmware/{original,modified} scripts prototypes

sudo apt update
sudo apt install -y git file binutils python3 python3-pip unzip xxd

git clone https://github.com/olli991/mib-std2-pq-zr-toolbox.git research/mib-toolbox
git clone https://github.com/mrfixpl/mib-std2-skins-customization.git research/mib-skins
```

read the repos. don't run install/flash scripts yet.

pico whenever: usb, uart bridge firmware, basic serial. stay off the car.

---

## phase 2: match unit to a known path

once part # / train are real:

- manufacturer (technisat/preh, delphi, harman, other)
- toolbox support or not
- usb vs sd for file transfer
- documented uart / dump methods
- firmware packs + recovery options

notes go in `docs/findings/` and `docs/access/`. if toolbox doesn't apply, plan B is dump + offline.

---

## phase 3: read-only access

files out, not in.

least risky first:

1. stock service / engineering menus
2. documented usb/sd paths from the toolbox crowd
3. uart after voltages check out
4. pull the unit for eMMC / jtag only if needed

backup what you can. hashes. keep originals somewhere safe.

---

## phase 4: first small change

after a real backup + a known restore path:

1. extract assets / skins
2. change one small thing (single icon)
3. rebuild the package
4. deploy the recoverable way
5. confirm it boots and looks different

then skins / layout. hmi logic later. interactive extras after that.

---

## not yet

- buying more hardware
- wiring the pico into the car
- firmware updates
- replacing the head unit
- anything safety-related

---

## done when

stock screen and computer, custom UI, factory features still work.
