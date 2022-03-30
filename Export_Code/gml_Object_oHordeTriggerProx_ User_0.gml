if (unique > -1)
{
    obj = instance_create(x, y, hordetype)
    obj.myhealth *= 2
    obj.unique = unique
    obj.setmus = setmus
    obj.itemdrop = itemdrop
    mus_current_fadeout()
    mus_play(setmus)
}
instance_destroy()
