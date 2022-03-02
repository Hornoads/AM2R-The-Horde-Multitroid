global.mapoffsetx = 63
global.mapoffsety = 57
global.floormaterial = 4
global.waterlevel = 0
global.darkness = 0
if file_exists("musArea9.ogg")
    mus_change(musArea9)
else
    mus_change(musArea2A)
scan_log(46, get_text("ScanEvents", "UpdateLog"), 160, 1)
