makeActive()
setCollisionBounds(-45, -84, 45, 0)
state = 1
canbeX = 1
myhealth = 900
timer = 0
rotspeed = 0
myspeed = 0
offset = 0
moveratio = 0
movesteps = 0
platform_engine_active = 0
damage = 50
hpush = 8
vpush = -5
stun = 0
stuntime = 4
canflash = 1
flashing = 0
statetime = 0
hitbeam = 0
hitmissile = 0
hitmissileexpl = 0
hitpbomb = 0
hitbomb = 0
hitscrewattack = 0
hitpseudoscrew = 0
hitemp = 0
canbehit = 0
candamage = 1
active = 0
canfreeze = 0
frozen = 0
platform = -4
platyoffset = -6
ceiling = 0
flipx = 1
target = 0
fxtimer = 0
facing = 1
dead = 0
hitsound = 61
deathsound = 299
canattack = 0
canspawn = 0
idlecount = 0
rage = 0
xtreme = 0
mBG0 = tile_add(tlHordeBreederMouthBG, 48, 16, 48, 48, (x - 4), (y - 63), 10)
tile_set_scale(mBG0, -1, 1)
mBG1 = tile_add(tlHordeBreederMouthBG, 0, 0, 48, 64, (x + 2), (y - 72), 11)
tile_set_scale(mBG1, -1, 1)
tongue = instance_create((x - 47), (y - 28), oHordeBreederTongue)
GRABhpmax = 50
GRABhp = -1
spit = 0
if (oControl.mod_monstersextremecheck == 1)
{
    rage = 1
    canspawn = 1
    xtreme = 1
}
scan_log(47, get_text("ScanEvents", "ScanBioform"), 210, 0)
