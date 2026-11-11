# how to get backups (this unit)

unit: `5C0035200B` / `MST2_US_VW_PQ_P0357T` / 1 SD slot / Technisat/Preh

goal: figure out the path, then grab dumps read-only-ish before any ui mods.

## the catch

toolbox `dump` menu is what you want for skins/files.
but console/telnet is off by default until toolbox is installed.
so for this single-SD / non-navi style unit, "just stick SD in and install" is often not the easy dual-SD navi path.

train is compatible (`MST2_...T`). install method is the hard part.

## prerequisite almost everyone hits

green engineering menu (GEM) on via OBD adaptations on module **5F**.
need an OBD adapter + software that can do that.
not a filesystem backup yet, but usually required before toolbox stuff.

## paths (least → most hardware)

### A. toolbox dump (after toolbox is on the unit)

once toolbox exists:

1. fat32 SD or usb with space
2. green menu -> toolbox -> **dump**
3. files land in `dump/` on the media
4. copy that off to laptop `dump/`

that's the practical way to pull skins / hmi bits without writing custom files yet.
still requires installing toolbox first.

### B. USB2HSD (solderless-ish toolbox install)

community path for one-SD / no-navi units.
roughly: USB2HSD cable on the HSD port on the back of the HU + UART/TTL (3.3v) + patcher flow, SD with toolbox staged.
then GEM -> dump as in A.

links:
- https://mibwiki.one/doc/mib-std2-toolbox-installation-via-usb2hsd-cable-aka-solderless-method-0Xzt03EC4d
- https://github.com/olli991/mib-std2-pq-zr-toolbox/discussions/431

needs gear i don't fully have mapped yet. don't improvise voltages (3.3v TTL only).

### C. eMMC image (true full backup / most "read-only of the whole flash")

pull the unit, hit eMMC pads (DAT0 etc), raw image with a reader/tool.
best full restore safety net.
heavier: disassembly, soldering/needles, ~7GB, exFAT/NTFS media for big images.

link: https://mibvault.com/wiki/mst2-technisat-preh/reading-writing-emmc

## what "backup" means here

| kind | what you get | needs |
| --- | --- | --- |
| toolbox dump | selected fs files (skins, etc) | toolbox installed |
| toolbox backup folder | autosave of files you overwrite later | toolbox + later writes |
| eMMC img | whole flash | hardware access to eMMC |

for ui work, start by aiming at a **toolbox dump of skins/hmi**. full eMMC is the serious safety net.

## not doing yet

- running toolbox install
- flashing / customizing
- wiring random uart without a known pinout + 3.3v

## decision

choice of first path is open: `docs/decisions/002-backup-access-path.md`
