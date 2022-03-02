flashing = 5
sfx_stop(sndTesterBarrierHit)
sfx_play(sndTesterBarrierHit)
if (myhealth <= 0)
{
    enabled = 0
    if (global.difficulty >= 2)
    {
        alarm[0] = 400
        if (xtreme == 1)
            alarm[0] = 320
    }
    sfx_play(sndTesterBarrierDown)
}
