if oBeam.chargebeam
{
    if canbehit
    {
        with (other.id)
        {
            damage *= 2
            event_user(0)
            if (pbeam == 0)
                instance_destroy()
        }
        event_user(0)
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
