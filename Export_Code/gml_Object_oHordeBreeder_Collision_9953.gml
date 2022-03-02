if (canbehit && flashing == 0)
{
    if (stun == 0 && hitbomb)
        event_user(0)
    if (myhealth <= 0)
        state = 100
}
