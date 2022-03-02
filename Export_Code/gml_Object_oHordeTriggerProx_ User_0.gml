if (unique > -1)
{
    obj = instance_create(x, y, hordetype)
    obj.unique = unique
    obj.setmus = setmus
    obj.itemdrop = itemdrop
    mus_current_fadeout()
    mus_play(setmus)
}
instance_destroy()
