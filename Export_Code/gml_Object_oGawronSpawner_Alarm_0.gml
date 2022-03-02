var projectile;
if (room != rm_a5b22)
{
    if (distance_to_object(oCharacter) < 160 && distance_to_object(oCharacter) > 32)
    {
        if (instance_number(oHornoad) < 24)
        {
            projectile = instance_create(x, (y - 16), oHornoad)
            projectile.state = 4
            projectile.timer = random(120)
            if (a7color == 1)
            {
                projectile.myhealth *= irandom_range(1, 5)
                projectile.colorset = make_colour_hsv(irandom(255), irandom(255), 254)
            }
            alarm[0] = 125
        }
    }
    else
        alarm[0] = 30
}
else if (room == rm_a5b22)
{
    if (distance_to_object(oCharacter) < 160 && distance_to_object(oCharacter) > 32)
    {
        if (instance_number(oMoheekWater) < 16)
        {
            projectile = instance_create(x, (y - 22), oMoheekWater)
            projectile.state = 1
            projectile.targetx = (x + irandom_range(-128, 128))
            projectile.targety = (y - irandom(144))
            alarm[0] = 160
        }
    }
    else
        alarm[0] = 30
}
