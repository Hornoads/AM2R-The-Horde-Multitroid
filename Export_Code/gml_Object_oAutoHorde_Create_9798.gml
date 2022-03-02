canbeX = 0
platform_engine_active = 1
rotspeed = 0
myspeed = 0
offset = 0
moveratio = 0
movesteps = 0
xVel = 0
yVel = 0
xAcc = 0
yAcc = 0
time = 0
setCollisionBounds(-12, -12, 12, 16)
myhealth = 400
canhit = 1
damage = 21
xtreme = 0
if (oControl.mod_monstersextremecheck == 1)
{
    myhealth = 500
    damage = 42
    xtreme = 1
}
mxhealth = myhealth
hpush = 6
vpush = -4
hitpbomb = 1
hitbomb = 1
hitbeam = 1
hitmissile = 1
hitmissileexpl = 0
hitscrewattack = 0
hitpseudoscrew = 1
hitsound = 193
deathsound = 309
active = 1
canfreeze = 0
frozen = 0
platyoffset = -6
frozenspr = 1774
flipx = 0
facing = 1
canflash = 1
flashing = 0
fxtimer = 0
candamage = 1
canbehit = 1
stun = 0
stuntime = 4
target = 0
state = 1
statetime = 0
alarm[0] = 100
clawangle = 0
clawx = -9
clawy = 0
fangy = 9
leg1 = instance_create(((x - clawx) - 1), clawy, oAutoHordeClaw)
leg1.damage = damage
leg2 = instance_create((x + clawx), clawy, oAutoHordeClaw)
leg2.damage = damage
leg2.image_xscale = -1
leg_angle = clawangle
leg_offset = 0
hitemp = 1
empspr = 1773
image_speed = 0
if (y > global.waterlevel && global.waterlevel != 0)
    inwater = 1
else
    inwater = 0
highjump = 0
eye = 0
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
if (room == rm_a1h05)
{
    mapposx = 59
    mapposy = 7
}
if (room == rm_a5h05)
{
    mapposx = 73
    mapposy = 43
}
if (room == rm_a5c06)
{
    mapposx = 58
    mapposy = 44
}
if (room != rm_a4b16)
{
    global.dmap[mapposx, mapposy] = 16
    with (oControl)
        event_user(2)
}
dead = 0
jt = (60 - (15 * (global.difficulty + xtreme)))
jumptime = 0
scan_log(46, get_text("ScanEvents", "ScanMechanism"), 420, 0)
