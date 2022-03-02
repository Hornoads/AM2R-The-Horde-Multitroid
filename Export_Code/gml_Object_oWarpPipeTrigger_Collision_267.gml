if (other.state == 23 && other.xVel == 0 && state == 0)
{
    with (other.id)
    {
        state = 60
        statetime = 0
    }
    state = 1
    statetime = 0
    sfx_play(sndMorphBallSlot)
    if ((room == rm_a1h05 || room == rm_a8h01) && global.event[11] == 0)
    {
        global.event[11] = 1
        global.dmap[55, 7] = "H"
        global.dmap[56, 7] = "H"
        global.dmap[57, 7] = "H"
        with (oControl)
            event_user(2)
    }
}
