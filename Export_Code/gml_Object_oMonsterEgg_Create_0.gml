image_speed = 0
if (global.event[304] != 0)
{
    sprite_index = sMonsterEggHatch
    image_index = 5
}
if AFDCheck()
{
    sprite_index = sHordeProjB
    if (global.event[304] != 0)
        image_index = 4
    else
        image_index = 2
}
