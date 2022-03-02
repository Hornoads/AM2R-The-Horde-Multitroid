if (oHordeBreeder.sprite_index == sHordeBreederAttack)
{
    if (oHordeBreeder.image_index == 1)
        reel = 1
    else
        reel = 0
}
if (state == 1)
{
    visible = false
    x = startx
    y = starty
    hp = 10
    hurt = 0
    GRAB = 0
}
if (state == 2)
{
    if (statetime == 0)
    {
        visible = true
        targetx = (oCharacter.x - 8)
        targety = (oCharacter.y - 8)
        if (oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27)
            targety = (oCharacter.y + 4)
        direction = point_direction(x, y, targetx, targety)
        speed = (8 + (xtreme * 2))
        sfx_play(sndGenesisSwing)
    }
    if (x <= targetx)
    {
        x = targetx
        y = targety
        speed = 0
        state = 3
        statetime = 0
        with (oHordeBreeder)
        {
            image_index = 1
            GRABhp = GRABhpmax
        }
    }
    if (hurt == 1)
    {
        speed = 0
        state = 3
        statetime = 0
        with (oHordeBreeder)
            image_index = 1
    }
}
if (state == 3)
{
    if (statetime == 5)
    {
        direction = point_direction(x, y, eatx, eaty)
        speed = (9 + xtreme)
    }
    if (x >= eatx)
    {
        x = eatx
        y = eaty
        speed = 0
        visible = false
        if (GRAB == 1 && hurt == 0)
        {
            eat = 1
            state = 4
            statetime = -1
            with (oHordeBreeder)
            {
                state = 8
                statetime = -1
            }
            sfx_play(sndCroak2)
        }
        else
        {
            state = 1
            statetime = -1
            with (oHordeBreeder)
            {
                state = 1
                statetime = -1
            }
        }
    }
    else if (GRAB == 1 && hurt == 0)
    {
        with (oHordeBreeder)
        {
            state = 7
            statetime = -1
        }
    }
}
if (state == 4)
{
    if ((statetime == 160 && xtreme == 0) || hurt == 1)
    {
        x = startx
        y = starty
        GRAB = 0
        hurt = 1
        eat = 0
        state = 1
        statetime = -1
        with (oHordeBreeder)
        {
            state = 9
            statetime = -1
        }
    }
}
if (hurt == 1)
    GRAB = 0
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
if (GRABfx == 1)
{
    if (!sfx_isplaying(sndPlantLoop))
        sfx_play(sndPlantLoop)
}
GRABfx -= 1
statetime += 1
