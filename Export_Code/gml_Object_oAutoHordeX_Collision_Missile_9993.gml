if (disabled == 0)
{
    if (armor > 0 && canbehit == 1)
    {
        armor -= min(other.damage, smax)
        flashing = 12
        event_user(0)
    }
    with (other.id)
        event_user(0)
}
