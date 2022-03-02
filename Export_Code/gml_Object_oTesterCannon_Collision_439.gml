if (damaged == 0)
{
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
    if (canbehit == 1)
    {
        myhealth -= 2
        event_user(1)
    }
}
