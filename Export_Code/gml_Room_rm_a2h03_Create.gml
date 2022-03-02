global.mapoffsetx = 30
global.mapoffsety = 17
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
SoundFX_Preset(1)
SetAmb_Monsters()
if (global.event[112] >= 1)
    instance_create(256, 192, scr_itemsopen(oControl.mod_varia))
