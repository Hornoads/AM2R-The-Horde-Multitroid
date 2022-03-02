if (facing == 1)
{
    if (image_angle <= 70)
        image_angle += rotspeed
    if (image_angle >= 70)
    {
        with (oHordeArea3)
            image_speed = 0.2
    }
    instance_destroy()
}
if (facing == -1)
{
    if (image_angle >= 110)
        image_angle -= rotspeed
    if (image_angle <= 110)
    {
        with (oHordeArea3)
            image_speed = 0.2
    }
    instance_destroy()
}
