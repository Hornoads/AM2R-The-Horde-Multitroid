var aoe;
if canbehit
{
    if (hitbeam && other.dohit && other.wbeam == 1)
    {
        with (other.id)
            event_user(0)
        if (flashing == 0)
        {
            if (xtreme == 1 && instance_number(oGunzooProj2) < 4)
                instance_create(x, y, oGunzooProj2)
            if (alarm[1] == -1)
            {
                aoe = instance_create(x, y, oHordeMiniShockAOE)
                alarm[1] = 60
            }
        }
        flashing = 15
    }
    if (hitbeam && other.dohit && other.wbeam == 0)
    {
        event_user(0)
        with (other.id)
            event_user(0)
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
