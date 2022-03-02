mus_stop(musHordeBossA)
mus_stop(musAncientGuardian)
if (global.event[serialnumber] == 0)
{
    global.event[330] += 1
    global.event[serialnumber] = 1
}
if (room != rm_a4b16)
{
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    global.dmap[mapposx, mapposy] = 15
}
if (room == rm_a3a23c)
{
    with (151736)
        alarm[2] = 1
    with (153093)
        state = 2
}
if (room == rm_a4b16)
    global.dmap[36, 58] = 15
with (oControl)
    event_user(2)
if (global.event[330] >= 21)
    scan_log(46, get_text("ScanEvents", "UpdateLog"), 160, 1)
