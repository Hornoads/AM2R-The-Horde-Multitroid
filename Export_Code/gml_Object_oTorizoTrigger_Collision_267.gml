if global.item[scr_itemchange(6)]
{
    with (oTorizoStatue)
        event_user(0)
    with (oDoor)
        event_user(0)
    with (115278)
        instance_destroy()
    with (115265)
        instance_destroy()
    with (115266)
        instance_destroy()
    mus_current_fadeout()
    if (global.event[152] == 0)
        global.event[152] = 1
    instance_destroy()
}
