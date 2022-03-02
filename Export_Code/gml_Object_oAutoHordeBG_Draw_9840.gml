myspr = sAutHordeBG
fangspr = sAutHordeFangBG
clawspr = sAutHordeClawBG
draw_sprite_ext(fangspr, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, image_alpha)
draw_sprite_ext(clawspr, -1, ((x - clawx) + 1), (y + clawy), -1, 1, (360 - clawangle), -1, image_alpha)
draw_sprite_ext(clawspr, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, image_alpha)
draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
