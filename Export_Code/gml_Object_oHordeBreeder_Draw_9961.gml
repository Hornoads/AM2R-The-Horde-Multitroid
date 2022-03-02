if (!flashing)
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
if flashing
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
if (sprite_index == sHordeBreederIdle)
{
    tile_layer_hide(10)
    tile_layer_hide(11)
}
if (sprite_index == sHordeBreederAttack)
{
    if (image_index == 0 || image_index == 2)
    {
        tile_layer_hide(11)
        tile_layer_show(10)
    }
    if (image_index == 1)
    {
        tile_layer_hide(10)
        tile_layer_show(11)
    }
}
