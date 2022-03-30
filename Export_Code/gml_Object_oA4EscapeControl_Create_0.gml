steps = 0
drawbar = 0
temp = 0
bgw = 0
gototemp = 0
alarm[1] = 280
barfx = 0
powercelltext = string(get_text("Misc", "TowerCellTemp"))
if AFDCheck()
    powercelltext = "Bufo is bufo"
barratio = (max(((string_length(string(powercelltext)) * 5) + 50), 162) / 162)
mus_current_stop()
tick = (136 - (9 * ((((global.item[0] + global.item[4]) + global.item[6]) + global.item[7]) + oControl.mod_monstersextremecheck)))
