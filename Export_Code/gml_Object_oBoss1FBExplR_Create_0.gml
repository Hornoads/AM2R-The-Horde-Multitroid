image_speed = 0.5
alarm[0] = 2
hpush = 5
vpush = -3
if (room == rm_a1h01)
    damage = global.mod_boss1DfireballExOR
else
{
    setCollisionBounds(-7, -17, 7, 0)
    damage = 15
}
