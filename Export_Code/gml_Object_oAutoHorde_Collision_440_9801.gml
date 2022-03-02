if canbehit
{
    if hitmissile
    {
        event_user(0)
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
}
if (yVel != 0)
{
    if (other.direction == 0 || other.direction == 45 || other.direction == 315)
        xVel += 1.6
    if (other.direction == 180 || other.direction == 135 || other.direction == 225)
        xVel -= 1.6
}
