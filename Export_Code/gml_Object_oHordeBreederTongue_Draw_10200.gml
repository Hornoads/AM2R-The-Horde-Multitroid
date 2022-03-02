draw_sprite_pos(sHordeBreederTongueBase, 0, stlx, stly, strx, stry, sbrx, sbry, sblx, sbly, 1)
draw_self()
if (flashing > 0)
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
