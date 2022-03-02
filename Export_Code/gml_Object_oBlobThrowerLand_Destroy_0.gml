var inst;
with (blobsolid)
    instance_destroy()
inst = instance_place(x, y, oBeam)
if (inst != noone)
{
    if inst.ibeam
        exit
}
repeat (2)
{
    make_explosion1((x + irandom_range(-16, 16)), (y - 8))
    make_explosion1((x + irandom_range(-16, 16)), (y - 24))
    make_explosion1((x + irandom_range(-16, 16)), (y - 40))
}
if (instance_number(oHornoad) < 16)
    instance_create(x, y, oHornoad)
