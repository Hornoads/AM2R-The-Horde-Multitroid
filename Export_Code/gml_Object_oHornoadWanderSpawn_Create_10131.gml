if (global.event[304] >= 1)
    instance_destroy()
spwnoffset = 320
if oControl.widescreen
    spwnoffset = (320 + oControl.widescreen_space)
if (room == rm_a0h01)
    alarm[0] = 420
else
    alarm[0] = random(380)
image_speed = 0
x = 0
y = 0
