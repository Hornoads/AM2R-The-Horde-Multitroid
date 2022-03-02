var gore, bdeb;
if (hp <= 0)
{
    if (phase > 3)
    {
        dead = 1
        state = 100
        statetime = 0
        alarm[10] = 1
        alarm[11] = 240
        with (oAutoHordeX)
        {
            state = 100
            statetime = 0
            alarm[10] = 1
            alarm[11] = 160
        }
    }
    else
    {
        sfx_play(sndCoreXHit)
        phase += 1
        spawn_many_powerups((x - 16), (y - 16), 32, 32)
        with (oAutoHordeX)
        {
            eyemode += (1 + (4 * xtreme))
            flashing = 150
            alarm[3] = 75
        }
        flashing = 150
        state = 0
        statetime = 0
        hp = 55
    }
}
else
{
    sfx_play(sndCoreXPhaseShort)
    repeat (2)
    {
        gore = instance_create(irandom_range((x - 4), (x + 4)), (y - 22), oDebris)
        gore.sprite_index = sBOXgore
        gore.depth = -30
    }
    bdeb = instance_create(irandom_range((x - 4), (x + 4)), (y - 22), oDebris)
    bdeb.sprite_index = sBOXdebris
    bdeb.depth = -30
}
