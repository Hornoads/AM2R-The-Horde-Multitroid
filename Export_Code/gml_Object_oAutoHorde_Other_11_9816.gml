var prj, prj1, prj2, prj3;
if (image_index == 0)
{
    sfx_play(sndFireMissile)
    prj1 = instance_create((x - 14), (y + 15), oTesterMissile)
    prj2 = instance_create(x, (y + 15), oTesterMissile)
    prj3 = instance_create((x + 14), (y + 15), oTesterMissile)
    prj1.ah = 1
    prj2.ah = 1
    prj3.ah = 1
}
else if (image_index == 1)
{
    prj1 = instance_create(x, (y + 15), oA3Beam)
    prj1.alarm[0] = 1
    prj1.image_yscale = 4
    sfx_play(sndALWelder)
}
else if (image_index == 2)
{
    repeat (2)
    {
        prj = instance_create(x, y, oGunzooProj2)
        prj.alarm[1] = 111
    }
    sfx_play(sndEMPHit)
}
else if (image_index == 3)
{
    prj = instance_create(x, (y + 15), oBoss1FBall)
    prj.direction = 270
    prj.speed = 5
    sfx_play(sndBoss1FBall)
}
