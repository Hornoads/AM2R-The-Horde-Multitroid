if (state != 100)
{
    flashing = 5
    fxtimer = 0
    PlaySoundMono(sndTorizoHit)
    myhealth -= 1
    if (myhealth <= 0)
    {
        if (phase >= 3)
        {
            alarm[10] = 1
            alarm[11] = 300
            with (oTorizoEgg)
                event_user(1)
            with (oTorizoGhost)
                event_user(1)
            if (oControl.mod_fusion == 0)
            {
                with (oTorizoSpikes)
                    event_user(0)
                mus_fadeout(musTorizoB)
                oMusicV2.bossbgm = 0
            }
            if (global.event[152] < 3)
                global.event[152] = 3
            dead = 1
            state = 100
            statetime = 0
        }
        if (phase <= 2)
        {
            myhealth = 25
            canbehit = 0
            state = 4
            statetime = -1
            phase = 3
            with (oTorizoSpikes)
                alarm[0] = 1
        }
    }
}
