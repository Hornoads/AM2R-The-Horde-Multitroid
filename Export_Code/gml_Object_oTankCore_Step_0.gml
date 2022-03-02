if (flashing > 0)
    flashing -= 1
if (global.event[203] != 1 && (!dead))
{
    event_user(1)
    dead = 1
}
