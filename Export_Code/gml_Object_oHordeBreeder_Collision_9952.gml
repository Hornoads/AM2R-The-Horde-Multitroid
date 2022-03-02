if canbehit
{
    if (hitmissile && flashing == 0)
    {
        event_user(0)
        flashing += 5
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
}
