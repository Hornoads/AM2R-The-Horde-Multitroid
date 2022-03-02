if flipx
    image_xscale = facing
else
    image_xscale = 1
myspr = sprite_index
if (state == 0)
{
    image_speed = 0.1
    canbehit = 0
    hitbeam = 0
    hitmissile = 0
    hitbomb = 0
    hitpbomb = 0
}
if (state == 1)
{
    mBG = 0
    xVel = 0
    yVel = 0
    sprite_index = sHordeBreederIdle
    image_speed = (0.1 + (0.1 * rage))
    canbehit = 1
    hitbeam = 0
    hitmissile = 0
    hitbomb = 1
    hitpbomb = 0
    if ((canattack == 1 || statetime >= 300) && image_index >= 3 && image_index <= 4)
    {
        canattack = 0
        state = choose(2, 3, 4)
        if (state == 3 && canspawn == 0)
            state = 2
        hitbeam = 1
        hitmissile = 1
        hitbomb = 1
        hitpbomb = 1
        statetime = -1
    }
}
if (state == 2)
{
    if (statetime >= 0 && statetime < 15)
    {
        sprite_index = sHordeBreederAttack
        image_index = 0
        image_speed = 0
    }
    if (statetime == 15)
    {
        image_index = 1
        alarm[0] = 1
    }
    if (statetime == 90)
    {
        state = 5
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        sprite_index = sHordeBreederAttack
        image_index = 0
        image_speed = 0
    }
    if (statetime == 9)
    {
        image_index = 1
        alarm[1] = 1
    }
    if (statetime == 100)
    {
        state = 5
        statetime = 0
    }
}
if (state == 4)
{
    sprite_index = sHordeBreederAttack
    if (statetime == 0)
    {
        image_speed = 0
        image_index = 0
    }
    if (statetime == 10)
    {
        tongue.state = 2
        tongue.statetime = -1
    }
}
if (state == 5)
{
    canattack = 0
    canspawn = 0
    image_index = 2
    if (statetime == 10)
    {
        state = 1
        statetime = -1
    }
}
if (state == 7)
{
    sprite_index = sHordeBreederAttack
    if (statetime == 0)
        image_index = 1
}
if (state == 8)
{
    sprite_index = sHordeBreederIdle
    if (statetime == 0)
    {
        image_index = 3
        alarm[2] = 25
    }
}
if (state == 9)
{
    sprite_index = sHordeBreederAttack
    if (statetime <= 5)
    {
        oCharacter.y = (y - 21)
        image_index = 0
    }
    if (statetime == 5)
    {
        image_index = 1
        spit = 1
        sfx_play(sndFBall1)
    }
    if (statetime == 20)
        image_index = 0
    if (statetime == 35)
    {
        canspawn = 1
        state = 1
        statetime = -1
    }
}
if (state == 100)
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    with (oHordeBreederTongue)
        instance_destroy()
    sprite_index = sHordeBreederAttack
    image_speed = 0.2
    canbehit = 0
    if (statetime == 0)
    {
        sfx_play(sndGenesisDeath)
        dead = 1
        event_user(1)
    }
}
statetime += 1
if (myhealth <= 256)
    rage = 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (stun > 0)
    stun -= 1
if (flashing > 0)
    flashing -= 1
if (global.event[265] > 0 && (!dead))
{
    myhealth = 0
    state = 100
    statetime = 0
    dead = 1
}
