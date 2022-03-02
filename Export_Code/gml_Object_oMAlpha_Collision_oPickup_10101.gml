if (state != 100 && (!dead))
{
    sfx_play(sndDrainLoop)
    myhealth += 5
    with (other.id)
        instance_destroy()
}
