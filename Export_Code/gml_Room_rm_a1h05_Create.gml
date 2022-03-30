global.mapoffsetx = 58
global.mapoffsety = 7
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
if (global.log[21] == 1)
    mus_change(musArea1A)
scan_log(21, get_text("ScanEvents", "ScanEnvironment"), 120, 0)
load_timeofday_bgs(global.timeofday)
instance_create(104, 400, scr_itemsopen(oControl.mod_109))
if (global.event[176] != 0)
{
    mus_change(musArea1A)
    with (oBlockPBombChain)
        instance_destroy()
}
