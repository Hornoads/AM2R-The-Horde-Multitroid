eye += 100
if (eye >= 300)
{
    image_index += 1
    sfx_play(sndA4DoorLock)
    eye = 0
}
if (myhealth < (mxhealth / 2))
{
    alarm[1] = 1
    eye = -1
}
