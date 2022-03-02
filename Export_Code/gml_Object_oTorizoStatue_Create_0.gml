image_speed = 0
image_index = 0
state = 0
statetime = 0
if (global.event[152] > 2)
{
    image_index = 8
    with (115278)
        instance_destroy()
    with (115265)
        instance_destroy()
    with (115266)
        instance_destroy()
    with (115268)
        instance_destroy()
    with (115269)
        instance_destroy()
    tile_layer_shift(-102, -336, 0)
    tile_layer_shift(-101, 0, -256)
}
