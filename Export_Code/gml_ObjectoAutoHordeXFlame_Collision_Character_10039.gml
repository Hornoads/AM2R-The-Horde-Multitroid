if (x < oCharacter.x)
    pushdir = 1
else
    pushdir = -1
if (cooldown == 0 && image_index < 10)
{
    damage_player(damage, (hpush * pushdir), vpush, 0, 0)
    oCharacter.onfire = 90
    cooldown = 15
}
else
    instance_destroy()
