if oBeam.chargebeam
{
    if (myhealth > 0)
    {
        if (flashing == 0)
        {
            isbeam = 1
            event_user(0)
            with (other.id)
                event_user(0)
            with (other.id)
                instance_destroy()
        }
        else
        {
            with (other.id)
                event_user(1)
        }
    }
}
else
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
