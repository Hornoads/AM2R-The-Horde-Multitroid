if (state == 0)
{
    image_index = 0
    dim = 254
}
if (state == 1)
{
    image_index = 0
    if (dim >= 250)
        dimdi = -1
    if (dim <= 112)
        dimdi = 1
    dim += (1 * dimdi)
}
if (state == 2)
{
    if (dim < 254)
        dim += 1
    if (dim >= 254)
    {
        dim = 255
        state = 3
    }
}
if (state == 3)
{
    if (dim != 0)
        dim -= 4
    if (dim <= 80)
        image_index = 1
    if (dim <= 0)
    {
        dim = 0
        state = 4
    }
}
if (state == 4)
{
    image_index = 1
    dim = 0
}
