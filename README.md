# Weed Sheet
This repo is only for hosting all the mods, cheats, images and icons in the [Weed Sheet spreadsheet](https://docs.google.com/spreadsheets/d/12eUPni-GbMofoGcAvGEoB3BGuzlzkY7DaH_3v3yMG78/)

The spreadsheet contains proper descriptions, credits and useful information for the mods.

![Weed Sheet in 2022](https://github.com/zzamizz/weed-sheet/blob/main/Media/Screenshots/weed%20sheet%20updated.png)
# 💻 Usage
**It's recommended to choose the mods you want from the spreadsheet instead of the repo, otherwise you might miss any important notes.**

All mods made via memory editing are uploaded in ``.pnach`` format to use with [PCSX2](https://pcsx2.net).

## How to download mods:
- Click the "Link" of the mod you've chosen

![Sheet link](https://raw.githubusercontent.com/zzamizz/weed-sheet/main/Media/Screenshots/sheetlink.png)

- Select "Download raw file" to download the PNACH
![Download raw](https://raw.githubusercontent.com/zzamizz/weed-sheet/main/Media/Screenshots/downloadraw2.png)
## How to install and enable the mods for PCSX2:
- Locate your emulator's ``/cheats`` directory and move the downloaded .pnach files in.

![Cheats directory](https://raw.githubusercontent.com/zzamizz/weed-sheet/main/Media/Screenshots/cheatdirectory.png)
- From PCSX2's system tab, find the "Enable Cheats" option. *(The location of this may vary between different versions.)*

![Enable Cheats](https://raw.githubusercontent.com/zzamizz/weed-sheet/main/Media/Screenshots/enablecheats.png)

If the CRC of the PNACH and your game copy matches, the cheat will work.

- To confirm whether your emulator is finding and enabling these cheats, you can check the program log/console for these lines:

![PCSX2's program log](https://raw.githubusercontent.com/zzamizz/weed-sheet/main/Media/Screenshots/programlog.png)

## How to play mods on a real PS2
PNACHes can also be converted to "raw" format for soft-modded consoles.
#### Before:
```
patch=1,EE,E10100FF,extended,002E0CC9 
patch=1,EE,202BF738,extended,43FA0000
```
#### After:
```
E10100FF 002E0CC9
202BF738 43FA0000
```
Alternatively, you can automate this process for bigger cheats using [PCSX2CE](https://forums.pcsx2.net/Thread-PCSX2CE-PCSX2-Cheat-Converter-Patch-File-Editor).

# 📖 Wiki
Check out the repository's wiki for cool stuff:

[PNACH Code Types](https://github.com/zzamizz/weed-sheet/wiki/PNACH-Code-Types)

# 🚧 To-do
- Add some new reliable tutorial for soft-modded consoles

# 💬 Other resources
[Sly Cooper Modding Server](https://discord.gg/2GSXcEzPJA) ~ Discord community dedicated to mod and reverse engineer the Sly series

[SlyMods](https://slymods.info/wiki/Main_Page) ~ Official wiki for the Sly Cooper modding community

[CLPS2C](https://github.com/NiV-L-A/CLPS2C) ~ Custom language for PS2 cheats
