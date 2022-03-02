if (global.metdead[myid] == 1)
{
    instance_destroy()
    exit
}
if (global.metdead[myid] == 0)
{
    with (oMOmega)
        event_user(1)
    instance_destroy()
}
