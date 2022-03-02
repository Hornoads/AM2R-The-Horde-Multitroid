if (room == rm_a0h01)
{
    if (global.metdead[0] || global.event[0])
    {
        instance_destroy()
        exit
    }
}
else if (room == rm_a0h05)
{
    if (global.event[5] > 0)
    {
        instance_destroy()
        exit
    }
}
