expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sTankProjExpl
if (instance_number(oHordeMini) <= 16 && random(19) <= 1)
    instance_create(x, y, oHordeMini)
PlaySoundMono(sndProjHit2)
instance_destroy()
