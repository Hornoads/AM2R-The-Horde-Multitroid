if (state == 1)
{
    if (statetime == 0)
        alarm[0] = 1
}
if (state == 100)
{
    if (statetime == 0)
    {
        sfx_stop(sndCoreXIdle)
        with (oAutoHordeX)
        {
            state = 100
            statetime = 0
        }
    }
}
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
statetime += 1
if (global.event[319] >= 1 && (!dead))
{
    dead = 1
    myhealth = 0
    state = 100
    statetime = 0
    alarm[10] = 1
    alarm[11] = 190
    with (oAutoHordeX)
    {
        armor = 0
        state = 100
        statetime = 0
        alarm[10] = 1
        alarm[11] = 140
    }
}
if (phase > 3)
    Bcol = 8421504
