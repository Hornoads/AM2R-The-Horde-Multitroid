if (instance_exists(shield1) && instance_exists(shield2))
{
    shield1.image_angle = shield_angle
    shield2.image_angle = (-shield_angle)
    shield1.x = ((round(x) + 8) + shield_offset)
    shield1.y = (round(y) - 3)
    shield2.x = ((round(x) - 8) - shield_offset)
    shield2.y = (round(y) - 3)
    if (frozen == 0)
    {
        if instance_exists(oLavaSurface)
        {
            if (glow == 1)
            {
                sprite_index = sHalzynBodyA4
                shield1.sprite_index = shieldlava1
                shield2.sprite_index = shieldlava1
                eyeSprite = 1706
            }
            else if (glow == 2)
            {
                sprite_index = sHalzynBodyA4
                shield1.sprite_index = shieldlava2
                shield2.sprite_index = shieldlava2
                eyeSprite = 1706
            }
        }
        else
        {
            shield1.sprite_index = shieldsp
            shield2.sprite_index = shieldsp
        }
        shield1.canhit = 1
        shield2.canhit = 1
    }
    else
    {
        shield1.sprite_index = shieldfrz
        shield2.sprite_index = shieldfrz
        shield1.canhit = 0
        shield2.canhit = 0
    }
}
