global.mapoffsetx = 68
global.mapoffsety = 9
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
SoundFX_Preset(1)
SetAmb_Monsters()
if (global.event[60] == 1)
    instance_create(480, 192, scr_itemsopen(oControl.mod_108))
