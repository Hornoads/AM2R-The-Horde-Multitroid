if (state == 5)
    draw_sprite_pixelated(sprite_index, image_index, 800, 112, -1, 1, image_angle, c_white, 1, sizeX, sizeY, 128)
else if flashing
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (1 - (fxtimer * 0.1)))
    draw_set_blend_mode(bm_normal)
}
else if (!flashing)
    draw_self()
