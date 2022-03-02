var aoe;
event_inherited()
if (pipeid != self)
{
    with (pipeid)
        pod -= 1
}
aoe = instance_create(x, y, oHordeMiniShockAOE)
