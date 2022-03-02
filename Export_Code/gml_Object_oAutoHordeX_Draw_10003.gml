draw_self()
draw_set_blend_mode(bm_add)
if flashing
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, image_angle, c_white, (1 - (fxtimer * 0.125)))
    draw_set_blend_mode(bm_normal)
}
draw_set_blend_mode(bm_normal)
if (boosting == 1)
{
    if (fxtimer >= 0 && fxtimer < 3)
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_green, 1)
        draw_set_blend_mode(bm_normal)
    }
    if (fxtimer == 3 || fxtimer == 4 || fxtimer == 5)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
        }
        draw_set_blend_mode(bm_normal)
    }
    if (fxtimer == 6 || fxtimer == 7 || fxtimer == 8)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 1)
        draw_set_blend_mode(bm_normal)
    }
}
