var spwn;
if (state == 1)
{
    if (pod < 3)
    {
        spwn = instance_create(midx, ((y + 2) + irandom(28)), oHordeMiniSwimShock)
        spwn.pipeid = id
        spwn.facing = facing
        spwn.tgtx[1] = (midx + (irandom_range(8, 24) * facing))
        spwn.tgtx[2] = (midx + (irandom_range(16, 48) * facing))
        spwn.tgtx[3] = (midx + (irandom_range(8, 24) * facing))
        pod += 1
    }
    alarm[2] = 120
    if (init > 0)
    {
        alarm[2] = 42
        init -= 1
    }
}
else
    alarm[2] = 160
