acceleration = 0.08
maxspeed = 3.25
drag = 0.025
forcemissile = 4
forcesupermissile = 5
myhealth[0] = 1
myhealth[1] = 1
myhealth[2] = 1
damage = 40
missiledamage = 1
superdamage = 2
gravity = 0
gravity_direction = 270
state = 0
statetime = 0
canbehit = 1
flashing = 0
fxtimer = 0
invulnerability = 180
sparkcount = 2
image_index = 0
image_speed = 0
sprite_index = sCoreXShell
canSpawnX = 1
canbeX = 1
if (room == rm_a2a04)
{
    damage = global.mod_coreArachnusDamage
    myhealth[0] = global.mod_coreArachnusHealthBlue
    myhealth[1] = global.mod_coreArachnusHealthYellow
    myhealth[2] = global.mod_coreArachnusHealthRed
    ge = 103
}
if (room == rm_a3a01)
{
    damage = global.mod_coreTorizoDamage
    myhealth[0] = global.mod_coreTorizoHealthBlue
    myhealth[1] = global.mod_coreTorizoHealthYellow
    myhealth[2] = global.mod_coreTorizoHealthRed
    acceleration = 0.09
    maxspeed = 4.5
    drag = 0.025
    ge = 152
}
if (room == rm_a8a11)
{
    damage = global.mod_coreGenesisDamage
    myhealth[0] = global.mod_coreGenesisHealthBlue
    myhealth[1] = global.mod_coreGenesisHealthYellow
    myhealth[2] = global.mod_coreGenesisHealthRed
    ge = 307
}
if (room == rm_a5b03a)
{
    damage = global.mod_coreErisDamage
    myhealth[0] = global.mod_coreErisHealthBlue
    myhealth[1] = global.mod_coreErisHealthYellow
    myhealth[2] = global.mod_coreErisHealthRed
    acceleration = 0.1
    maxspeed = 7
    drag = 0.03
    ge = 261
}
if (room == rm_a5h01)
{
    damage = 45
    myhealth[0] = 2
    myhealth[1] = 3
    myhealth[2] = 3
    maxspeed = 3.5
    ge = 265
}
if (room == rm_a5c07)
{
    damage = 80
    myhealth[0] = 4
    myhealth[1] = 4
    myhealth[2] = 3
    acceleration = 0.08
    maxspeed = 5
    drag = 0.027
    ge = 319
}
sizeX = 1
sizeY = 1
xtype = 1601
dead = 0
