var smoke;
if (state != 100)
{
    if (instance_number(oHordeFlameSmoke) < 14)
    {
        smoke = instance_create(((x - 15) + irandom(32)), (y + irandom(20)), oHordeFlameSmoke)
        smoke.direction = 90
        smoke.speed = random(3)
    }
    if (instance_number(oHordeFlameSmoke) > 12)
        damage_player(damage, hpush, vpush, 0, 0)
}
else
{
    repeat (8)
    {
        smoke = instance_create(((x - 15) + irandom(32)), (y + irandom(24)), oHordeFlameSmoke)
        smoke.direction = 90
        smoke.speed = random(3)
    }
    sfx_play(sndSteam)
}
