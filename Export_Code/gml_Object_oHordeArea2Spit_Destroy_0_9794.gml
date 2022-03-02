expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.4
expl.additive = 0
expl.depth = -1
expl.sprite_index = sHordeProj
if (global.lavastate > 2)
    instance_create(x, y, oHordeMini)
