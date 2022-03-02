if (type == 3)
{
    if ((!damaged) && open)
    {
        prj = instance_create(x, y, oTesterSpazerBeam)
        prj.direction = image_angle
        prj.image_angle = image_angle
        prj.speed = 5
        if (global.difficulty == 1)
        {
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 40)
            prj.image_angle = (image_angle + 40)
            prj.speed = 5
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 40)
            prj.image_angle = (image_angle - 40)
            prj.speed = 5
        }
        if (global.difficulty >= 2)
        {
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 30)
            prj.image_angle = (image_angle + 30)
            prj.speed = 7
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 30)
            prj.image_angle = (image_angle - 30)
            prj.speed = 7
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 60)
            prj.image_angle = (image_angle + 60)
            prj.speed = 7
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 60)
            prj.image_angle = (image_angle - 60)
            prj.speed = 7
        }
        with (oTester)
            alarm[0] = 1
    }
    if open
    {
        if (global.difficulty < 2)
            alarm[0] = 14
        else
            alarm[0] = 11
    }
}
if (type == 2)
{
    if ((!damaged) && open)
    {
        prj = instance_create(x, y, oTesterWaveBeam)
        prj.direction = image_angle
        prj.image_angle = image_angle
        prj.speed = 6
        if (x < 160)
            prj.hspeed -= 7
        else
            prj.hspeed += 7
        with (oTester)
            alarm[0] = 1
    }
    if open
        alarm[0] = 7
}
if (xtreme == 1)
    alarm[0] *= 0.8
