event_inherited()
makeActive()
setCollisionBounds(-14, -14, 14, 14)
facing = 1
myhealth = 60
freezehp = 10
damage = 32
hpush = 6
vpush = -3
hitsound = 62
deathsound = 59
platyoffset = -6
frozenspr = 427
flipx = 0
state = 0
shield1 = instance_create((x + 8), (y - 3), oHalzynShield)
shield2 = instance_create((x - 8), (y - 3), oHalzynShield)
shield2.image_xscale = -1
shield_angle = 0
shield_offset = 0
time = 0
limit_l = (x - 80)
limit_r = (x + 80)
glow = 0
eyeSprite = 1666
AFDayEnemy(sAutoad, 1794)
if (AFDCheck() == 1)
{
    shieldlava1 = 1783
    shieldlava2 = 1783
    shieldsp = 1783
    shieldfrz = 1782
    image_speed = 0.2
    shield1.image_xscale = -1
    shield2.image_xscale = 1
}
else
{
    shieldlava1 = 1700
    shieldlava2 = 1701
    shieldsp = 428
    shieldfrz = 429
}
