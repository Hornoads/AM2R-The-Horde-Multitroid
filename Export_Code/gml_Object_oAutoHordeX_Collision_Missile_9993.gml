if (disabled == 0)
{
    if (armor > 0 && canbehit == 1)
    {
        armor -= other.damage
        flashing = 9
        event_user(0)
    }
    with (other.id)
        event_user(0)
}
