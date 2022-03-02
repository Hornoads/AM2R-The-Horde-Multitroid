var myid2;
speed = 0
if (room == rm_a7b08A)
    myid2 = 93
else
    myid2 = myid
met = instance_create(x, y, oMAlpha)
met.facing = facing
met.myid = myid
met.spriteset = 0
with (met)
{
    set_monster_vars(myid2)
    shell = instance_create(x, y, oMAlphaShell)
    shell.damage = damage
    shell.hpush = 5
    shell.vpush = -3
}
sfx_play(sndMAlphaIntro)
if (room != rm_a7b08A)
    global.monstersalive += 1
instance_destroy()
