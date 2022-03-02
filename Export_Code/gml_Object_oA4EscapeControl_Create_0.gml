steps = 0
drawbar = 0
temp = 0
bgw = 0
gototemp = 0
alarm[1] = 280
barfx = 0
powercelltext = string(get_text("Misc", "TowerCellTemp"))
barratio = (max(((string_length(string(powercelltext)) * 5) + 50), 162) / 162)
mus_current_stop()
tick = 99
if (oControl.mod_fusion == 0 && oControl.mod_monstersextremecheck == 0)
    tick += 15
if (global.gamemode != 1 && (global.item[0] == 0 || global.item[6] == 0 || global.item[7] == 0))
    tick += 40
