if (unique > 0)
{
    global.event[unique] = 1
    mus_stop(setmus)
    mus_current_fadein()
    with (oDoor)
        event_user(3)
    if (global.item[itemdrop] == 0)
        instance_create(x, y, scr_itemsopen(itemdrop))
}
