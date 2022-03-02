if (canbehit && hitpbomb == 1 && flashing == 0)
{
    if (stun == 0 && hitpbomb)
        event_user(2)
    if (myhealth <= 0)
        state = 100
}
