if (oMOmega.state != 100)
{
    if (other.collectable == 1 && other.state < 6)
    {
        PlaySoundMono(sndDrainLoop)
        with (oMOmega)
            myhealth += 10
    }
    with (other.id)
    {
        if (collectable == 1 && state < 6)
        {
            sfx_play(sndAbsorbX)
            state = 7
            statetime = 0
            relativeX = (x - other.x)
            relativeY = (y - (other.y - (other.sprite_height / 2)))
            monx = other.x
            mony = other.y
            monsh = other.sprite_height
        }
    }
}
