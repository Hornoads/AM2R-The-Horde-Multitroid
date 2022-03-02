image_angle = random(360)
if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
    {
        if (random(16) <= 1)
            instance_create(x, (y - 8), oHordeMini)
        instance_destroy()
    }
}
