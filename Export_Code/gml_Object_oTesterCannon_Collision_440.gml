if (damaged == 0)
{
    with (other.id)
        event_user(0)
    if (canbehit == 1)
    {
        myhealth -= (5 * (1 + (other.smissile * 2)))
        event_user(1)
    }
}
