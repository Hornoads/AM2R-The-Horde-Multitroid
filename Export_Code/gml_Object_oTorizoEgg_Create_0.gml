canbeX = 0
canbehit = 1
image_speed = 0
alarm[0] = 120
if (global.difficulty >= 2)
    alarm[0] = 90
if (global.difficulty == 0)
    alarm[0] = 30
if (oControl.mod_monstersextremecheck == 1)
    canbehit = 0
