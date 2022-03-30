if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.07
    else
        instance_destroy()
}
hspeed *= 1.02
