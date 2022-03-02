if (state == 8)
{
    if (image_index == 3)
    {
        image_index = 2
        alarm[2] = 5
        exit
    }
    if (image_index == 2)
    {
        image_index = 3
        alarm[2] = random_range(10, 45)
    }
}
