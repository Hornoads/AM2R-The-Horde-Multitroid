if (flashing == 0 && state == 1)
{
    hp -= (10 * (1 + (other.smissile * 2)))
    flashing = 25
    with (other.id)
        event_user(0)
    event_user(0)
}
