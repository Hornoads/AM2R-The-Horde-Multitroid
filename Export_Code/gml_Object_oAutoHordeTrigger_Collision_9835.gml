var trig;
if (room == rm_a3a23c)
{
    with (151747)
    {
        alarm[0] = 30
        alarm[1] = 210
    }
    with (153093)
    {
        image_index = 0
        state = 0
    }
    with (oDoorA5)
        event_user(0)
}
else if instance_exists(serial)
{
    if (serial.image_index == 0)
    {
        trig = serial
        trig.alarm[0] = serial0
        trig.alarm[1] = serial1
    }
}
with (oAutoHordeTrigger)
{
    if (serial == other.serial)
        instance_destroy()
}
instance_destroy()
