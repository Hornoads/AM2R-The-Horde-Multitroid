if (loo >= 2)
{
    loo = 0
    with (oEMP)
        instance_destroy()
    PlaySoundMono(sndTesterBarrierDown)
    if (state == 40)
        alarm[5] = 210
    exit
}
if (state == 40)
{
    if (loo == 1)
    {
        empfield = instance_create(0, 0, oEMP)
        empfield.image_xscale = 640
        empfield.image_yscale = 480
        flashing = 0
        alarm[5] = 160
        PlaySoundMono(sndTesterBarrierUp)
        loo += 1
        exit
    }
    if (loo == 0)
    {
        flashing = 90
        PlaySoundMono(sndA4AlarmLoop)
        if (state == 40)
            alarm[5] = 60
        loo += 1
    }
}
