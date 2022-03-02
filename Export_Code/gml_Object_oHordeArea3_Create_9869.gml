action_inherited()
makeActive()
if (image_yscale == 1)
    setCollisionBounds(-16, 0, 16, 30)
if (image_yscale == -1)
    setCollisionBounds(-16, -30, 16, 0)
image_index = floor(random(5))
myhealth = 120
freezehp = 60
canfreeze = 1
canbeX = 1
damage = 16
hitsound = 67
deathsound = 398
platyoffset = 0
frozenspr = 1790
canattack = 1
jumpheight = (-3 * image_yscale)
state = 1
statetime = 0
alarm[0] = (30 + irandom(140))
alarm[2] = (40 + irandom(120))
xtreme = 0
if (oControl.mod_monstersextremecheck == 1)
{
    xtreme = 1
    myhealth *= 1.1
    damage *= 2
}
maxhealth = myhealth
