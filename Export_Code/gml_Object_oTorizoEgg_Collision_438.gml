if (canbehit == 1)
{
    spawn_rnd_pickup(100)
    sfx_play(sndEHit7)
    event_user(1)
}
else
    event_user(0)
