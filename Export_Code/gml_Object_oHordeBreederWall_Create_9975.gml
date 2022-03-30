if (global.event[265] > 0)
{
    if ((oControl.mod_fusion == 1 && global.event[265] == 4) || oControl.mod_fusion == 0)
        instance_destroy()
}
image_speed = 0.2
originx = x
originy = y
state = 0
statetime = 0
flashing = 1
fxtimer = 0
sizeX = 1
sizeY = 1
if file_exists("musHordeBossB.ogg")
    bgm = 389
else
    bgm = 295
