spark = instance_create(x, y, oFXAnimSpark)
spark.sprite_index = sRoboMineSpark
spark.image_speed = 0.5
spark.additive = 1
spark.image_xscale = choose(1, -1)
spark.image_yscale = choose(1, -1)
spark.image_angle = irandom(360)
spark.depth = -5
alarm[0] = (20 + irandom(40))
if (state == 100)
    alarm[0] = 10
