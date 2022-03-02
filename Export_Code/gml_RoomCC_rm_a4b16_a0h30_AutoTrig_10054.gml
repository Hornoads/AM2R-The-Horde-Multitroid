if (room == rm_a4b16)
    serial = 150449
else if (room == rm_a0h30)
{
    image_xscale = 32
    image_yscale = 8
    serial = 151938
}
serial0 = 1
serial1 = 50
if (global.event[182] == 0 || global.event[314] == 1 || (room == rm_a0h30 && global.event[203] == 0))
    instance_destroy()
