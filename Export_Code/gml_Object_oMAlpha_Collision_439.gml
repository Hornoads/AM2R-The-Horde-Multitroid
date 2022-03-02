if oBeam.chargebeam
{
    if canbehit
    {
        event_user(0)
        with (other.id)
        {
            event_user(0)
            instance_destroy()
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
