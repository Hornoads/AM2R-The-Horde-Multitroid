if canbehit
{
    if (flashing == 0)
    {
        if (hitbeam && other.dohit && other.wbeam == 1)
        {
            if (myhealth < (maxhealth + 25) && other.ibeam == 0)
            {
                myhealth += other.damage
                sfx_play(sndDrainLoop)
            }
            if (myhealth >= (maxhealth + 25) && (!instance_exists(oBatteryExpl)))
                alarm[1] = 1
            if (state != 2 && state != 5 && myhealth >= (maxhealth + 12))
            {
                canattack = 1
                state = 2
                xVel = 0
            }
            if (xtreme == 1 && instance_number(oGunzooProj2) < 8)
            {
                instance_create(x, y, oGunzooProj2)
                flashing = 15
            }
            if (other.ibeam == 1)
                event_user(0)
            with (other.id)
                event_user(0)
        }
        if (hitbeam && other.dohit && other.wbeam == 0)
        {
            event_user(0)
            with (other.id)
                event_user(0)
        }
    }
    if (!hitbeam)
    {
        with (other.id)
            event_user(1)
    }
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
}
