enemy_death2()
i = 0
repeat (36)
{
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.image_angle = direction
    prj.speed = 3
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.image_angle = direction
    prj.speed = 2
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.image_angle = direction
    prj.speed = 1
    i += 1
}
repeat (2)
    instance_create((x + irandom_range(-8, 8)), y, oHordeMini)
