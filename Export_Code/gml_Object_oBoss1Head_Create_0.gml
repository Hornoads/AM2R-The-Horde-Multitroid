action_inherited()
canbeX = 0
myhealth = ((global.maxmissiles * 3) + global.mod_boss1Health)
damage = global.mod_boss1Dhead
hitmissileexpl = 0
hitscrewattack = 0
canbehit = 0
hitbeam = 1
hitmissile = 1
hitbomb = 1
hitpseudoscrew = 0
hitsound = 193
deathsound = 59
canfreeze = 0
platyoffset = -6
frozenspr = sprite_index
flipx = 0
facing = 1
state = 0
image_alpha = 0
image_speed = 0
edge_l = 64
edge_r = 256
phase = 0
movetime = 120
block1 = instance_create(16, 32, oBoss1Block)
block1.facing = 1
block2 = instance_create(304, 32, oBoss1Block)
block2.facing = -1
wall1 = instance_create(0, 80, oSolid2x2)
wall1.image_yscale = 3
wall2 = instance_create(288, 80, oSolid2x2)
wall2.image_yscale = 3
wheel = instance_create(x, y, oBoss1Wheel)
sparkcounter = 0
dead = 0
xtreme = 0
if (oControl.mod_monstersextremecheck == 1)
{
    damage *= 1.2
    myhealth *= 1.2
    xtreme = 1
    sparkcounter = 1
}
if (oControl.mod_fusion == 1)
    myhealth *= 0.8
