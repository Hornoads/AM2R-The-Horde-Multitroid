action_inherited()
makeActive()
setCollisionBounds(-5, -10, 5, 0)
image_index = floor(random(5))
myhealth = 1
freezehp = 1
damage = 1
hpush = 1
vpush = -1
canfreeze = 1
hitsound = 61
deathsound = 65
platyoffset = -5
frozenspr = 1794
canattack = 1
hitpseudoscrew = 1
jumpheight = -2
state = 1
if (random(10) < 5)
    facing = -1
else
    facing = 1
timer = random(50)
alarm[0] = (30 + random(90))
