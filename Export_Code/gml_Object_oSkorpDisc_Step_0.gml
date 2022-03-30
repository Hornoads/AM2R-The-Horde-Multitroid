if (spin == 1 || spin == -1)
{
    if (sprite_index == sSkorpDiscLunge || sprite_index == sHornoadIdle)
    {
        image_index += 0.2
        if (image_index > 2.8)
        {
            if AFDCheck()
                sprite_index = sHornoadShake
            else
                sprite_index = sSkorpDisc
        }
    }
    if (sprite_index == sSkorpDisc)
        image_index += 0.4
    if (sprite_index == sHornoadShake)
        image_angle += (spin * 21)
}
else if (sprite_index == sSkorpDisc || sprite_index == sHornoadShake)
{
    image_index = 2
    image_angle = 0
    if AFDCheck()
        sprite_index = sHornoadIdle
    else
        sprite_index = sSkorpDiscLunge
}
else if (sprite_index == sSkorpDiscLunge && image_index > 0.2)
    image_index -= 0.1
