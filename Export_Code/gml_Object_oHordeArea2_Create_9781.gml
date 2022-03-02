action_inherited()
makeActive()
setCollisionBounds(-16, 0, 16, 30)
image_index = floor(random(5))
myhealth = 120
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.25))
    if (freezehp < 1)
        freezehp = 1
}
else
    freezehp = 100
canfreeze = 1
canbeX = 1
damage = 21
hitsound = 218
deathsound = 398
platyoffset = 0
frozenspr = 1790
canattack = 1
jumpheight = -3
state = 1
setmus = 0
unique = 0
itemdrop = 0
alarm[0] = (30 + irandom(140))
alarm[1] = (70 + irandom(160))
alarm[2] = (60 + irandom(120))
