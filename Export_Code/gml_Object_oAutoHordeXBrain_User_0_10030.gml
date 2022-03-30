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
        monster_spawn_powerups((x - 16), (y - 32), Bigspawn, Smallspawn)
        with (oAutoHordeX)
        {
            eyemode += (1 + (4 * xtreme))
            flashing = 150
            alarm[3] = 75
        }
        flashing = 150
        state = 0
        statetime = 0
        hp = (55 + (45 * oAutoHordeX.xtreme))
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
