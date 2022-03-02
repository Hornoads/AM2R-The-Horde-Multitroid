if (armor <= 0)
{
    disabled = 1
    clawr.disabled = 1
    clawl.disabled = 1
    fang.disabled = 1
    oAutoHordeXEyes.image_index = 5
    sfx_play(sndClawPuzzle2)
    alarm[0] = -1
    alarm[1] = -1
    alarm[3] = 480
    alarm[4] = -1
    with (oAutoHordeXBrain)
    {
        state = 1
        statetime = 0
    }
    xVel = 0
    yVel = 0
    speed = 0
    state = 50
    statetime = 0
    boosting = 0
}
if (armor > 0)
    sfx_play(sndTesterBarrierHit)
fxtimer = 0
