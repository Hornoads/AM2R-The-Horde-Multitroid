event_inherited()
makeActive()
if (image_angle == 0)
    setCollisionBounds(-4, -12, 4, 0)
if (image_angle == 180)
    setCollisionBounds(-4, 0, 4, 12)
if (image_angle == 90)
    setCollisionBounds(-12, -4, 0, 4)
if (image_angle == 270)
    setCollisionBounds(0, -4, 12, 4)
image_index = floor(random(5))
myhealth = 10
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
damage = 6
hitsound = 61
deathsound = 59
platyoffset = -14
frozenspr = 305
canattack = 1
jumpheight = -2
state = 1
if instance_exists(oCharacter)
{
    if (x >= oCharacter.x)
        facing = -1
    if (x < oCharacter.x)
        facing = 1
}
alarm[0] = (60 + random(120))
alarm[1] = (90 + random(200))
alarm[2] = (100 + random(200))
colorset = 16777215
israin = 0
pbea = 0
scared = 0
unique = -1
itemdrop = 0
setmus = 0
canspike = 1
