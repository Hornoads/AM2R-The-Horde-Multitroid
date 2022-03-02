if instance_exists(clawl)
{
    clawl.image_angle = clawlangle
    clawl.x = (x + clawlx)
    clawl.y = (y + clawly)
}
if instance_exists(clawr)
{
    clawr.image_angle = clawrangle
    clawr.x = (x + clawrx)
    clawr.y = (y + clawry)
}
if instance_exists(fang)
{
    fang.x = (x + fangx)
    fang.y = (y + fangy)
}
if instance_exists(brain)
{
    brain.x = (x + brainx)
    brain.y = (y + brainy)
}
if instance_exists(eyes)
{
    eyes.x = x
    eyes.y = y
}
if (dsolid == 1)
{
    disolid1.x = ((x - 32) - (468 * samin))
    disolid1.y = (y - 22)
    disolid2.x = ((x - 48) - (452 * samin))
    disolid2.y = (y - 22)
    disolid3.x = ((x + 34) - (534 * samin))
    disolid3.y = (y - 22)
    disolid4.x = ((x - 48) - (452 * samin))
    disolid4.y = (y - 6)
}
if (instance_exists(oBattery) && grab == 1)
{
    oBattery.x = fang.x
    oBattery.y = (fang.y + 16)
}
if (state != 100)
{
    if (isCollisionRight(16) && xVel > 0)
        xVel *= -0.9
    if (isCollisionLeft(16) && xVel < 0)
        xVel *= -0.9
    if (state != 50)
    {
        if collision_line(x, ((y + 14) + jl), x, ((y + 14) + jl), oSolid, true, true)
            y -= 1
    }
    else if collision_line(x, ((y + 14) + 12), x, ((y + 14) + 12), oSolid, true, true)
        y -= 1
}
