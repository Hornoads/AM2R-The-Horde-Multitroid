if (state != 90 && myhealth > 0)
{
    if (PowerBombImmune == 0 && xtreme == 0)
    {
        state = 90
        statetime = 0
        PowerBombImmune = 1
    }
    else if (xtreme == 1 && canbehit)
        angry += 100
}
