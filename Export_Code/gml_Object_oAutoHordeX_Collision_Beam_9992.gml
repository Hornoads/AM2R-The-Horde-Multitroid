if (disabled == 1)
{
    with (other.id)
        event_user(0)
}
else
{
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
    if (armor > 0 && canbehit == 1)
    {
        armor -= other.damage
        flashing = 5
        event_user(0)
    }
}
