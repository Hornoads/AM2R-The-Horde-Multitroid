if (state != 100)
{
    if (flashing == 0)
    {
        dmg = other.damage
        if (global.difficulty == 2)
            dmg = ceil((dmg / 2))
        myhealth -= dmg
        sfx_play(hitsound)
        stun = stuntime
        if canflash
        {
            flashing = 5
            fxtimer = 0
        }
        if (GRABhp > 0)
        {
            GRABhp -= other.damage
            if (GRABhp <= 0)
            {
                with (oHordeBreederTongue)
                    hurt = 1
                GRABhp = -1
            }
        }
    }
    if (myhealth <= 0)
    {
        if (global.event[265] == 0)
            global.event[265] = 1
        state = 100
        statetime = 0
    }
}
