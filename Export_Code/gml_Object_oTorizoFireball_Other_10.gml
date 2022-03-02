expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sTorizoProjExpl
if (random(9) <= 1)
{
    instance_create(x, y, oHordeMini)
    if (instance_number(oHordeMini) >= 16)
    {
        with (instance_furthest(oCharacter.x, oCharacter.y, oHordeMini))
            instance_destroy()
    }
}
PlaySoundMono(sndProjHit2)
instance_destroy()
