serial = 151935
serial0 = 1
serial1 = 55
image_xscale = 3
image_yscale = 2
if (global.event[182] == 0 || global.event[324] == 1)
    instance_destroy()
if (global.item[scr_itemchange(302)] != 0)
{
    x = 720
    y = 354
    image_xscale = 20
    image_yscale = 4
}
