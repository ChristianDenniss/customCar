# vehicle / head unit

## car

- year: 2017
- model: volkswagen jetta
- transmission: automatic
- vin: TBD
- notes: TBD

## head unit

- platform: MIB2 Standard PQ
- part number: `5C0 035 200 B`
- hardware: H30
- software: 0357
- media codec: 3201.0.0.8
- manufacturer: likely Technisat/Preh
- full software train: TBD
- os: TBD (qnx expected if technisat)
- sd slot: TBD
- usb: TBD
- toolbox: likely mib-std2-pq-zr-toolbox if train ends in `T`

## software train

what it is: full software identity string, like `MST2_US_VW_PQ_P0357T`.

rough decode:
- `MST2` = MIB STD2 family
- region / brand (`US`/`EU`, `VW`)
- `PQ` = platform (mine)
- `P0357` = build (matches software 0357)
- last letter often = maker (`T` = Technisat/Preh)

why: confirms manufacturer for toolbox, matches the right firmware/skin packs, avoids wrong-train assets.

how to get it:
1. radio on
2. hold physical **MENU** ~10s -> service mode
3. open **Software Update** / versions
4. read/photo the `MST2_...` string
5. do **not** start an update

system info screen won't show it. if MENU hold does nothing, try another combo later / green menu path.

## photos / screens

- home screen: TBD
- system information: yes (part `5C0035200B`, H30, sw 0357, codec 3201.0.0.8)
- service menu / train: TBD

## other

TBD
