var prj;
repeat (2)
{
    prj = instance_create(x, (y + 16), oHordeFlameSpit)
    prj.speed = random_range(3, 6)
    prj.direction = random_range(-24, 24)
    prj.facing = facing
    if (facing == -1)
        prj.direction += 180
}
if (!sfx_isplaying(sndHFlameWhoosh))
    sfx_play(sndHFlameWhoosh)
