# 002: first backup / access path

**status:** open (not chosen yet)

unit: `5C0035200B` / `MST2_US_VW_PQ_P0357T` / 1 SD / Technisat/Preh

## bias

don't want to get blocked waiting on hardware purchases.
**least new gear wins**, as long as it still gets what i want in a **safe** way (recoverable, no cowboy flashing).
buying specialty cables / eMMC setups is last resort, not day-one preference.

**no soldering.** period. if a path needs iron/pads/needles, it's out (or absolute last-last resort i'm not planning on).

## choice

how do i get the first useful backup / file access before ui mods?

shared prerequisite for the soft paths: **GEM on via OBD module 5F** (adapter + coding software). not optional for toolbox land.

background: `docs/access/backup-paths.md`

---

## option A: USB2HSD -> toolbox -> dump

install toolbox with USB2HSD (+ UART/TTL 3.3v patcher flow), then use toolbox **dump** to pull skins/hmi files to SD/USB.

### pros

- community path made for one-SD / no-navi units
- no eMMC pad soldering for the install itself
- after install, dump/customize/restore workflow matches the toolbox crowd
- gets the exact files needed for ui work (skins etc)
- HU can stay more "car installed" depending on cable access (still usually need rear HSD)

### cons

- not actually read-only: you're installing toolbox onto the unit
- needs parts i may not have: USB2HSD cable, TTL adapter(s) @ 3.3v, maybe bench 12V, patience with grounds/noise
- fiddly procedure (putty, shorts, timing) — easy to brick process-wise if rushed
- dump != full flash image; restore story is file-level not whole-disk
- GEM/OBD still required

### needs if picked

- OBD gear for 5F/GEM
- USB2HSD cable (known-good ground)
- 3.3v USB-TTL (not 5v)
- FAT32 SD with toolbox staged
- follow a known guide end-to-end (mibwiki / discussion #431)

---

## option B: eMMC raw image first

pull HU, connect to eMMC (DAT0 pads / reader), take a full raw image, park that as the real safety net. toolbox can come later (on image or on unit).

### pros

- closest thing to a true full backup before changing software
- best unbrick / restore story
- more "read-only of the flash" than installing toolbox
- works even when soft install paths suck

### cons

- needs soldering / pad work
- hardware-heavy: unit out, pads/needles/solder, card reader, big disk image (~7GB class)
- slower on PQ with DAT0-only
- doesn't by itself give a nice skin dump workflow (still need to mount/extract or install toolbox afterward)
- more ways to physically damage stuff if clumsy

### for me

path stays documented. **not an option i'm taking** — no soldering, not buying that gear.

### needs if picked

- HU removal tools
- eMMC probe/solder setup + reader
- imaging tool (e.g. USB Image Tool / HDD Raw Copy etc)
- big exFAT/NTFS media
- mibvault eMMC read/write notes

---

## option C: try plain SD service-mode toolbox anyway

stage toolbox on SD, MENU hold -> software update, hope it takes on this one-SD unit.

### pros

- cheapest / least new gear if it works
- same end state as A (toolbox -> dump)

### cons

- community says one-SD / non-navi often **can't** do the easy dual-SD install
- metainfo/variant issues on some part numbers
- easy to waste time / get into weird update states
- still not read-only; still needs GEM

### needs if picked

- GEM on
- FAT32 SD + toolbox release
- acceptance that it may fail and then fall back to A or B

---

## option D: defer hardware paths, only OBD/GEM + more research

enable GEM, keep documenting, don't buy USB2HSD/eMMC gear until more confirmation for this exact part/train.

### pros

- no spend yet
- GEM unlock is useful prep either way
- time to read USB2HSD / eMMC guides cold

### cons

- still zero file backup
- doesn't move ui work
- can turn into stalling

### needs if picked

- OBD adapter + 5F GEM steps only

---

## compare quick

| | useful skin dump | full flash safety | new gear | invasive | read-only-ish |
| --- | --- | --- | --- | --- | --- |
| A USB2HSD + toolbox dump | yes | weak | medium | medium | no (installs toolbox) |
| B eMMC image | later | best | high | high | closest |
| C plain SD install | if it works | weak | low | low-medium | no |
| D GEM + research only | no | no | low | low | n/a |

## decision

TBD

## when chosen

fill in: picked ___, why ___, parts list ___, first session plan ___.
