if (unique > 0)
{
    mus_fadeout(setmus)
    mus_current_fadein()
    if (global.item[itemdrop] == 0)
        instance_create(x, (y + 32), scr_itemsopen(itemdrop))
    with (oDoor)
        event_user(3)
    global.event[unique] += 1
}
sfx_play(sndEDeath3)
