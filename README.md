# AM2R-Community-Updates

## The Horde Changes
This is built upong Multitroid 1.3. This mod is made with [UndertaleModTool](), which is why this source is not a Game Maker Studio repo.  
In order to use this: Use the aforementioned UndertaleModTool to open the data.win (`game.unx` / `game.ios`) from the Releases and its repacker scripts, along with [these](https://github.com/krzys-h/UndertaleModTool/pull/685/files) scripts for importing Rooms/Objects.

The Horde is *not* compatible with milesthenerd's AM2R-Server. It requires The Horde Server for online funcitonality instead. Multitroid may render a save unable to attain 100% completion if a player joins mid-game. Be sure all players are joined before beginning a match to mitigate this risk.  
You can find the Horde Server [here](https://github.com/Hornoads/AM2R-The-Horde-Server).

Custom Music sourced from https://harmony.shinesparkers.net/, see "Custom_Music_Credits" for the full list of tracks and artists.

Custom Sounds sourced from Freesounds.com, modified by JesRight7

Custom Graphics by JesRight7, modified fog by ShirtyScarab554.

"REVOLT OF BUFOS" title Font: Xolonium

Consultants/Advisors/Playtesters: ShirtyScarab554, Miepee, DruidVorse, Lojemiru, milesthenerd, Zackonark, Ridley, The Ethereal One, Naatiska, atver, Ridley, M3D


## Co-op Changes
String compression scripts are by Homunculus: https://marketplace.yoyogames.com/assets/4560/strict

Special thanks to Lojical/Lojemiru and ShirtyScarab for help with programming and art.

The source code here has the same requirements as the original repo in order for it to work. Only the code and my changes have been included.

Currently syncs all health, ammo, items, metroids, events, and power-ups. The Queen fight is synced, boss deaths are synced, the reactor explosion sequence is synced, the transition to the credits at the end is synced, and death is synced.

If players die, progress will be kept for a better user experience.

There is a Multitroid Settings menu under Options that allows you to change whatever mod settings you need to and connect/disconnect. There is no longer a need to manually edit the mod_settings.ini.

The server can be found here: https://github.com/lassiterm/AM2R-Server

## What is this?
The source code for the AM2R Community Updates 1.5.x branch, free of copyrighted assets and trademarks.
If you have not played the AM2R Community Updates before, this will be of no use to you!

This source code is based on [AM2Rrc](https://gitlab.com/yellowafterlife/AM2Rrc) by YellowAfterlife. It could be considered a fork.

If you are looking for a playable build of the mod, please download the [AM2RLauncher](https://www.reddit.com/r/AM2R/comments/iajukx/am2r_152_release_the_am2rlauncher/) and the latest version on the [Release Page](https://github.com/lassiterm/AM2R-Multitroid/releases/latest). After that you can add it in AM2RLauncher's mod settings.

## Copyright clarifications
This source code does not contain any copyrighted assets or trademarks - in fact, it does not contain *any* assets at all, just like the AM2Rrc repository.

Assets must be extracted from your copy of the AM2R Community Updates using [GMXDataSync](https://github.com/YAL-GameMaker-Tools/GmxDataSync/blob/master/Executable/GmxDataSync.exe) in order to compile this project properly.

Furthermore, there are two paid shader assets included in the Community Updates: 
[Pixelated Pope's Retro Palette Swapper](https://pixelatedpope.itch.io/retro-palette-swapper) and
[PixHammer's GameBoy Shader](https://pixhammer.itch.io/gameboy-shader).
We do not curently have permission to distribute either of these assets, so they are excluded from this repository.
You will need to replace them with default shader code in order for the project to compile.

Finally, we have excluded the datafiles and changelog from this repository to further enforce the removal of trademarks.

## License
Please read the [license](https://github.com/lassiterm/AM2R-Multitroid/blob/main/LICENSE) before distributing, modifying, contributing to, or otherwise interacting with this project.

## Contributing
Please read the [Contribution Guidelines](https://github.com/lassiterm/AM2R-Multitroid/blob/main/CONTRIBUTING.md) before opening any issues or creating pull requests.

Additionally, it would be most helpful if you joined the [Official AM2R Discord Server](https://discord.gg/HAeG8spkSu) if you plan on contributing to the project.
