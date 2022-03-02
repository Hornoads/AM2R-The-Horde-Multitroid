if (state != 100)
{
    if (flashing == 0)
    {
        dmg = 15
        if (global.difficulty == 2)
            dmg = ceil((dmg / 2))
        myhealth -= dmg
        if canflash
        {
            flashing = 10
            fxtimer = 0
        }
        sfx_play(hitsound)
        if (myhealth <= 0)
        {
            if (global.event[265] == 0)
                global.event[265] = 1
            state = 100
            statetime = 0
        }
    }
}
