if (state == 3 && statetime < 77)
{
    prj = instance_create((x + (20 * facing)), (y - 22), oGenesisAcid)
    prj.hspeed = ((5 + random(9)) * facing)
    prj.vspeed = (1 - random(3))
    alarm[0] = 2
    if (xtreme == 1)
    {
        prj.hspeed *= 1.2
        alarm[0] = 1
    }
}
