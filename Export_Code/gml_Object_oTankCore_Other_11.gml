with (oTank)
{
    state = 100
    statetime = -1
}
instance_destroy()
instance_create(x, y, oHordeArea3)
repeat (5)
    instance_create(x, y, oDebris)
make_explosion1big(x, y)
