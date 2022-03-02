var rain, bye;
alarm[0] = irandom(120)
bye = instance_furthest(800, 160, oHornoad)
if (!(collision_rectangle((oCharacter.x - 80), (oCharacter.y - 208), (oCharacter.x + 80), (oCharacter.y - 16), oSolid, 0, 1)))
{
    rain = instance_create(((oCharacter.x - 72) + irandom(144)), (oCharacter.y - 140), oHornoad)
    rain.state = 1
    rain.yVel = 3
    rain.israin = 1
}
if (instance_number(oHornoad) > 32)
{
    with (bye)
        instance_destroy()
}
