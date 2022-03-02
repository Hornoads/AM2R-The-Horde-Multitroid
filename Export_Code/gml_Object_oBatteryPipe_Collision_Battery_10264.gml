if (bat == 0)
{
    fallspeed = other.yVel
    alarm[0] = 55
    bat = instance_nearest(x, y, oBattery)
    other.yVel = 0
}
