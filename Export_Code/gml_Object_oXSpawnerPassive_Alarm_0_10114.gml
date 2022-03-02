if (canSpawnX && state == 1)
{
    if (canmove == 1)
    {
        integ = random(10)
        if (integ >= 5)
            integ = 1
        else
            integ = -1
        spnx = irandom_range(-160, 160)
        if (spnx > -160 || spnx < 160)
            spny = irandom_range(-112, 112)
        else
            spny = (112 * integ)
    }
    inst = spawn_rnd_pickup_at((x + spnx), (y + spny), 100)
    if instance_exists(inst)
    {
        inst.state = 2
        inst.statetime = 0
        inst.depth = -151
        canSpawnX = 0
        alarm[1] = 75
    }
}
