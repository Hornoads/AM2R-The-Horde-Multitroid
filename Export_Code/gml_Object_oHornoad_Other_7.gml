if (state == 4)
    image_index = 6
if (state == 3 || state == 2 || state == 5)
    state = 1
if (state == 100 && sprite_index == sHornoadDeath)
{
    spawn_rnd_pickup(100)
    instance_destroy()
}
