var prj, prjspeed;
prjspeed = (5 + xtreme)
if (state == 4)
    prjspeed = 4.8
if (random(16) <= 1)
{
    prj = instance_create((((x - surf_x) + mouth_x) + (2 * facing)), ((y - surf_y) + mouth_y), oHordeMini)
    prj.state = 4
    prj.speed = prjspeed
}
else
{
    prj = instance_create(((x - surf_x) + mouth_x), ((y - surf_y) + mouth_y), oMZetaProj)
    prj.gravity = 0.1
    prj.gravity_direction = 270
    prj.speed = prjspeed
}
prj.direction = ((body_angle + ((head_dir + mouth_dir) * facing)) + head_angle)
if (facing == -1)
    prj.direction += 180
if (state == 11 && statetime < 60)
    alarm[0] = 3
if (state == 4 && xtreme == 1)
{
    prj.alarm[0] = 70
    if (yVel < -1)
        alarm[0] = 5
}
