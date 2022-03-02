global.mapoffsetx = 21
global.mapoffsety = 15
global.waterlevel = 0
global.watertype = 0
SetAmb_Monsters()
instance_create(68, 48, oElderSeptogg)
if (global.item[oControl.mod_52] == 0 && global.event[7] >= 1)
    instance_create(288, 208, scr_itemsopen(oControl.mod_52))
