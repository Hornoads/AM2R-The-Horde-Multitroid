canbeX = 0
makeActive()
setCollisionBounds(-15, -12, 15, 24)
hpush = 5
vpush = -3
flashing = 0
flashtime = 0
canbehit = 1
frozen = 0
platform = 0
statetime = 0
turndelay = 0
currentangle = 0
targetangle = 0
rotspeed = 0
spdelay = 120
turning = 0
dodgedelay = 0
dodgetime = 0
dodging = 0
fxtimer = 0
chasing = 0
hitsound = 137
deathsound = 141
active = 1
target = 0
state = 3
alarm[1] = 120
alarm[3] = 1
damagedealt = 0
drawefangs = 0
grabber = -4
arms = -4
nextsp = 0
scan_log(13, get_text("ScanEvents", "ScanBioform"), 180, 0)
legfa1a = 0
legfa1t = 0
legfa1da = 0
legfa2a = 0
legfa2t = 0
legfa2da = 0
legfb1a = 0
legfb1t = 0
legfb1da = 0
legfb2a = 0
legfb2t = 0
legfb2da = 0
legba1a = 0
legba1t = 0
legba1da = 0
legba2a = 0
legba2t = 0
legba2da = 0
legbb1a = 0
legbb1t = 0
legbb1da = 0
legbb2a = 0
legbb2t = 0
legbb2da = 0
legrotspeed = 0
alarm[9] = 1
inwater = 0
speedmulti = 1
targetx = x
targety = y
dead = 0
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
if (room != rm_a7b08A)
{
    if (room != rm_a5b17)
    {
        mapposx = (myposx + global.mapoffsetx)
        mapposy = (myposy + global.mapoffsety)
    }
    else
    {
        mapposx = 71
        mapposy = 52
    }
}
sand = 0
