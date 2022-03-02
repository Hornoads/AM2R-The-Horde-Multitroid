if (oMOmega.state != 100)
{
    sfx_play(sndDrainLoop)
    oMOmega.myhealth += 10
    with (other.id)
        instance_destroy()
}
