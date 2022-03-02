global.mapoffsetx = 59
global.mapoffsety = 16
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 5
scan_log(22, get_text("ScanEvents", "ScanEnvironment"), 180, 0)
if (global.event[61] == 1)
    instance_create(448, 144, scr_itemsopen(oControl.mod_103))
