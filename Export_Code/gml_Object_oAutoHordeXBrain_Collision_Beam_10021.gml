if (flashing == 0 && state == 1)
{
    hp -= other.damage
    flashing = 15
    with (other.id)
        event_user(0)
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
    event_user(0)
}
if (state == 0)
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
