if (state != 50 && state != 100)
{
    disabled = 1
    clawr.disabled = 1
    clawl.disabled = 1
    fang.disabled = 1
    oAutoHordeXEyes.image_index = 5
    state = 50
    statetime = 0
    alarm[0] = -1
    alarm[3] = 600
    with (oAutoHordeXBrain)
    {
        state = 1
        statetime = 0
    }
}
