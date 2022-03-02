if (!canbehit)
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
else
{
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
    angry += 2
    if other.chargebeam
        angry += 12
    event_user(0)
}
