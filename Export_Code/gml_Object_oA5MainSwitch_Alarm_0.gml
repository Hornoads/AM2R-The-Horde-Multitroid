if (global.event[250] > 0)
{
    with (oDoor)
        lock = 0
    if (global.event[182] == 0)
        instance_create(480, 384, oA5SwitchLight)
    instance_destroy()
}
if (global.event[182] != 0)
{
    instance_destroy()
    exit
}
