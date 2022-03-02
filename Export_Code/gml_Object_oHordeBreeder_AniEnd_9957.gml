if (state == 1)
{
    if (idlecount < 8 && canattack == 0)
        idlecount += random(3)
    else
    {
        idlecount = 0
        canattack = 1
        if (instance_exists(oHordeArea1) || instance_exists(oHordeArea2) || instance_exists(oHordeArea3) || instance_exists(oHordeFlame))
            canspawn = 0
        else
            canspawn = 1
    }
}
if (sprite_index == sHordeBreederIdle)
    sfx_play(sndCroak2)
