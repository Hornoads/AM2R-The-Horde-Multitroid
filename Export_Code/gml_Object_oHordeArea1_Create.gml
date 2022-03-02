action_inherited()
makeActive()
setCollisionBounds(-8, -21, 8, 0)
image_index = floor(random(5))
myhealth = 80
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
damage = 10
hitsound = 61
deathsound = 397
platyoffset = -14
frozenspr = 1812
canattack = 1
jumpheight = -2
state = 1
setmus = 0
unique = 0
itemdrop = 0
alarm[0] = (60 + random(60))
alarm[1] = (90 + random(150))
alarm[2] = (50 + random(130))
missdodge = 0
if (oControl.mod_monstersextremecheck == 1)
    damage = 15
