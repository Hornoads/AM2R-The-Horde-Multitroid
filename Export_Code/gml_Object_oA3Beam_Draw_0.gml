draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, (image_alpha - (fxtimer * 0.5)))
draw_set_blend_mode(bm_normal)
