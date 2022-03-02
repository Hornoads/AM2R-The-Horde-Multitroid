var expl;
expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.4
expl.additive = 0
expl.depth = -1
expl.sprite_index = sHornoadProj
sfx_play(sndCrystalMelt)
switch spawntype
{
    case 0:
        instance_create(x, (y - 16), oHordeArea2)
        break
    case 1:
        instance_create(x, (y - 16), oHordeFlame)
        break
    case 2:
        instance_create(x, (y - 16), oHordeArea3)
        break
}

