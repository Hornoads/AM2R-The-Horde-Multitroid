action_inherited()
makeActive()
setCollisionBounds(-4, -12, 4, 0)
image_index = floor(random(5))
myhealth = 50
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth / 2))
    if (freezehp < 1)
        freezehp = 1
}
damage = 8
turndelay = 0
hitsound = 61
deathsound = 376
platyoffset = -14
frozenspr = 305
canattack = 1
jumpheight = -2.2
state = 1
setmus = 0
unique = -1
itemdrop = 0
alarm[0] = (50 + random(120))
alarm[1] = (60 + random(200))
alarm[2] = (100 + random(200))
