global.mapoffsetx = 72
global.mapoffsety = 43
make_liquid(0, 1280, 0, 0, 0, 0, 1)
global.floormaterial = 1
global.objdeactivate = 0
if (global.event[250] > 0)
    mus_change(musArea5B)
else
    mus_change(musArea5A)
instance_create(80, 176, scr_itemsopen(oControl.mod_302))
