instance_create(x, y, oTesterIceSpark)
if (random(17) <= 2)
{
    instance_create(x, y, oHordeMini)
    if (instance_number(oHordeMini) > 21)
    {
        with (instance_furthest(oCharacter.x, oCharacter.y, oHordeMini))
            instance_destroy()
    }
}
instance_destroy()
