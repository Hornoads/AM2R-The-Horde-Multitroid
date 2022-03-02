sfx_play(sndA4DoorLock)
if (myhealth >= (mxhealth * 0.5))
{
    image_index += 1
    alarm[1] = 300
}
else if (myhealth < (mxhealth * 0.5) && myhealth > (mxhealth * 0.25))
{
    image_index += irandom_range(1, (image_number - 1))
    alarm[1] = (100 + random(200))
}
else if (myhealth <= (mxhealth * 0.25) && state != 100)
{
    image_index += irandom_range(1, (image_number - 1))
    alarm[1] = (30 + random(270))
}
