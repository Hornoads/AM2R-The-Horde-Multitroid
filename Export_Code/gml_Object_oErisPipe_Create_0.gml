active = 0
time = 0
timemax = 720
cooldown = 0
cooldownmax = 60
alarm[0] = (30 + irandom(90))
facing = 1
image_speed = 0
state = 0
pod = 0
init = 3
if (global.event[261] > 0)
{
    state = 1
    alarm[2] = 42
}
faces = 0
midx = (x + 8)
