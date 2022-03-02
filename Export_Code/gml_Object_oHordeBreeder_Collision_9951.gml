if (canbehit && state != 100)
{
    if (hitbeam && other.dohit && flashing == 0)
    {
        event_user(0)
        flashing += 5
        with (other.id)
            event_user(0)
    }
    if (!hitbeam)
    {
        with (other.id)
            event_user(1)
    }
    with (other.id)
        instance_destroy()
}
