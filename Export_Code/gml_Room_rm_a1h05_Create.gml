global.mapoffsetx = 58
global.mapoffsety = 7
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
scan_log(21, get_text("ScanEvents", "ScanEnvironment"), 120, 0)
load_timeofday_bgs(global.timeofday)
instance_create(104, 400, scr_itemsopen(oControl.mod_109))
if (global.event[176] != 0)
{
    with (oBlockPBombChain)
        instance_destroy()
}
