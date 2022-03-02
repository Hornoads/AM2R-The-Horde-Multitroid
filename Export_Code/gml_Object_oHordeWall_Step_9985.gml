if (state == 0)
{
    if (image_index != 0)
        image_speed = -1
    if (image_index < 1)
    {
        image_speed = 0
        image_index = 0
        state = 1
        statetime = 0
    }
    if (x == 424 && y >= 32 && global.event[265] == 0 && nxt == 0)
    {
        nxt = 1
        alarm[0] = 2
    }
}
if (state == 1)
{
    if (statetime == 0)
        sfx_play(sndCrystalShake)
}
if (state == 2)
{
    if (statetime == 0)
    {
        with (oHordeWall)
            state = 2
        sfx_play(sndCrystalMelt)
        image_speed = 0.2
    }
}
statetime += 1
