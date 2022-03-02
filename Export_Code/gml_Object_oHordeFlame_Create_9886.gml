action_inherited()
makeActive()
setCollisionBounds(-15, 0, 15, 30)
image_index = floor(random(5))
myhealth = 140
canfreeze = 0
canbeX = 1
damage = 21
hitsound = 166
deathsound = 398
platyoffset = 0
canattack = 1
hitscrewattack = 0
jumpheight = -3
state = 1
alarm[0] = (60 + irandom(240))
alarm[2] = (40 + irandom(90))
ibea = 0
xtreme = 0
if (oControl.mod_monstersextremecheck == 1)
{
    myhealth *= 1.2
    damage *= 1.5
    xtreme = 1
}
