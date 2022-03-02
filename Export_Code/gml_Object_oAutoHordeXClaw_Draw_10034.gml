draw_self()
draw_set_blend_mode(bm_add)
repeat (2)
{
    if (flashing > 0)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (flashing * 0.1))
}
draw_set_blend_mode(bm_normal)
if oAutoHordeX.boosting
{
    if (oAutoHordeX.fxtimer == 0 || oAutoHordeX.fxtimer == 1)
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_green, (1.1 + (oAutoHordeX.fxtimer * 0.2)))
        draw_set_blend_mode(bm_normal)
    }
    if (oAutoHordeX.fxtimer == 2 || oAutoHordeX.fxtimer == 3)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
        }
        draw_set_blend_mode(bm_normal)
    }
    if (oAutoHordeX.fxtimer == 4 || oAutoHordeX.fxtimer == 5)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_red, 1)
        draw_set_blend_mode(bm_normal)
    }
}
