if (state == 1)
{
    if (myhp <= 0)
    {
        myhp = 0
        spawn_rnd_pickup(100)
        state = 100
        sfx_play(sndEHit7)
    }
    else
        myhp -= 1
}
