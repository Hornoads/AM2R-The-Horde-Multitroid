time = 0
time2 = 0
float = 1
image_speed = 0
sxoffset = x
syoffset = y
gyoffset = y
xscal = 1
yscal = 1
colb = 16777215
if (AFDCheck() == 1)
{
    sprite_index = sHordeBOX
    xscal = 2
    yscal = 2
    sxoffset = (x - 2)
    syoffset = (y + 32)
    gyoffset = (y + 16)
    colb = 65535
}
