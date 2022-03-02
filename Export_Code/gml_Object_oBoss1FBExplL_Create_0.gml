image_speed = 0.5
alarm[0] = 2
hpush = 5
vpush = -3
if (room == rm_a1h01)
    damage = global.mod_boss1DfireballExOL
else
{
    setCollisionBounds(-7, -17, 2, -8)
    damage = 15
}
