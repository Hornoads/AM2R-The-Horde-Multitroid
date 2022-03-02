var expl;
expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.4
expl.additive = 0
expl.depth = -1
expl.sprite_index = sHornoadProj
if (instance_number(oHordeArea1) <= 8)
    instance_create(x, y, oHordeArea1)
