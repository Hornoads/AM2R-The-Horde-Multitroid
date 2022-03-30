enemy_active_check(2400)
if (state == 0)
{
    if (!isCollisionBottom(jl))
        yVel += 0.25
    if (isCollisionBottom(jl) && yVel >= 0)
    {
        xVel = 0
        yVel = 0
        clawlangle = -36
        clawrangle = 36
        quake = instance_create(0, 0, oQuake)
        quake.delay = 0
        quake.duration = 30
        quake.intensity = 10
        sfx_play(sndA4DoorClose)
        state = 60
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 1)
        flashing = 20
    if (statetime == 45)
    {
        sfx_play(sndAutoCroak)
        oAutoHordeXEyes.image_index = 0
        event_user(1)
    }
}
if (state == 2)
{
    if (!isCollisionBottom(jl))
        yVel += 0.25
    if (clawlangle > 0)
        clawlangle -= 2
    if (clawrangle < 0)
        clawrangle += 2
    if ((!isCollisionBottom(jl)) && yVel == 0)
        alarm[1] = 1
    if (isCollisionBottom(jl) && yVel > 0)
    {
        sfx_play(sndA4DoorClose)
        xVel = 0
        yVel = 0
        clawlangle = -34
        clawrangle = 34
        alarm[0] = 50
    }
}
if (state == 10)
{
    if (!isCollisionBottom(jl))
        yVel += 0.25
    if (clawlangle > 0)
        clawlangle -= 2
    if (clawrangle < 0)
        clawrangle += 2
    if ((!isCollisionBottom(jl)) && floor(yVel) == 0)
    {
        alarm[1] = 1
        state = 11
        statetime = 0
    }
    if (isCollisionBottom(jl) && yVel > 0)
    {
        xVel = 0
        yVel = 0
        sfx_play(sndA4DoorClose)
        clawlangle = -34
        clawrangle = 34
        alarm[0] = 45
    }
}
if (state == 11)
{
    if (statetime == 0)
    {
        xVel = (3.7 * facing)
        yVel = 0
    }
    if (statetime >= 90)
    {
        yVel += 0.2
        if (xVel == 0)
            alarm[1] = -1
        if (xVel != 0)
        {
            if (xVel > 0)
                xVel -= 0.1
            if (xVel < 0)
                xVel += 0.1
        }
        if (isCollisionBottom(jl) && yVel > 0)
        {
            xVel = 0
            yVel = 0
            sfx_play(sndA4DoorClose)
            clawlangle = -34
            clawrangle = 34
            alarm[0] = 45
            state = 10
            statetime = 0
        }
    }
}
if (state == 20)
{
    boosting = 1
    if (statetime == 1)
    {
        if (canstomp == 0)
            alarm[6] = 150
    }
    if (!isCollisionBottom(jl))
        yVel += 0.25
    if (clawlangle > 0)
        clawlangle -= 4
    if (clawrangle < 0)
        clawrangle += 4
    if ((!isCollisionBottom(jl)) && y > (oCharacter.y + 16) && canstomp == 1)
    {
        canstomp = 0
        state = 21
        statetime = 0
        alarm[0] = -1
    }
    if (isCollisionBottom(jl) && yVel > 0)
    {
        xVel = 0
        yVel = 0
        sfx_play(sndA4DoorClose)
        clawlangle = -34
        clawrangle = 34
        alarm[0] = 20
    }
}
if (state == 21)
{
    if (statetime == 1)
    {
        sfx_play(sndSJStart)
        xVel = 0
        yVel = 0
    }
    if (statetime == 32)
    {
        sfx_loop(sndSJLoop)
        speed = (9 + xtreme)
        if ((oCharacter.y + 16) <= y)
        {
            direction = point_direction(x, y, oCharacter.x, (oCharacter.y - 16))
            if (direction >= 181 && direction < 270)
                direction = 180
            else if (direction >= 270 && direction <= 359)
                direction = 0
        }
        else if (oCharacter.x >= x)
            direction = 0
        else if (oCharacter.x < x)
            direction = 180
    }
    if (statetime >= 25)
    {
        if (isCollisionTop(2) || (isCollisionRight(32) && direction >= 0 && direction < 90) || (isCollisionLeft(32) && direction > 90 && direction <= 180))
        {
            speed = 0
            xVel = 0
            yVel = 0
            sfx_stop(sndSJLoop)
            PlaySoundMono(sndQueenImpact)
            quake = instance_create(0, 0, oQuake)
            quake.delay = 0
            quake.duration = 10
            quake.intensity = 5
            state = 22
            statetime = 0
        }
    }
}
if (state == 22)
{
    if (statetime > 20)
    {
        state = 20
        statetime = 0
        alarm[0] = 60
    }
}
if (state == 30)
{
    if (statetime == 1)
    {
        alarm[1] = 30
        if (canstomp == 0)
            alarm[6] = 240
    }
    if (!isCollisionBottom(jl))
    {
        yVel += 0.25
        if (canstomp == 1 && x >= (oCharacter.x - 12) && x <= (oCharacter.x + 12) && y < (oCharacter.y - 80))
        {
            canstomp = 0
            xVel = 0
            state = 31
            statetime = 0
        }
    }
    if (clawlangle > 0)
        clawlangle -= 2
    if (clawrangle < 0)
        clawrangle += 2
    if (isCollisionBottom(jl) && yVel > 0)
    {
        xVel = 0
        yVel = 0
        sfx_play(sndA4DoorClose)
        FBR = instance_create((x + 47), (y + 30), oBoss1FBExplR)
        FBL = instance_create((x - 46), (y + 30), oBoss1FBExplL)
        FBR.image_yscale = 2
        FBL.image_yscale = 2
        clawlangle = -34
        clawrangle = 34
        alarm[0] = 60
    }
}
if (state == 31)
{
    if (statetime == 15)
        sfx_play(sndQueenBigFire)
    if (statetime >= 15)
    {
        if (!isCollisionBottom(jl))
            yVel += 0.7
        if (isCollisionBottom(jl) && yVel > 0)
        {
            yVel = 0
            quake = instance_create(0, 0, oQuake)
            quake.delay = 0
            quake.duration = 15
            quake.intensity = 8
            xVel = 0
            clawlangle = -30
            clawrangle = 30
            sfx_play(sndALPressDown)
            alarm[0] = 100
            state = 30
            statetime = 0
        }
    }
}
if (state == 37)
{
    if instance_exists(oBattery)
    {
        if (!isCollisionBottom(jl))
            yVel += 0.25
        if (clawlangle > 0)
            clawlangle -= 2
        if (clawrangle < 0)
            clawrangle += 2
        if ((!isCollisionBottom(jl)) && x == oBattery.x && y < oBattery.y)
            xVel = 0
        if (isCollisionBottom(jl) && yVel > 0)
        {
            sfx_play(sndA4DoorClose)
            xVel = 0
            yVel = 0
            clawlangle = -34
            clawrangle = 34
            alarm[0] = 60
            if (x >= (oBattery.x - 16) && x <= (oBattery.x + 16) && y < oBattery.y && distance_to_object(oBattery) < 32)
            {
                state = 38
                statetime = 0
                alarm[0] = -1
                sfx_play(sndA4DoorInit)
            }
        }
    }
    else
        event_user(1)
}
if (state == 60)
{
    if (statetime == 0)
        sfx_play(sndA4DoorInit)
    if (grab == 0)
    {
        if (fangy < 15)
            fangy += 0.2
        if (fangy >= 15)
        {
            fangy = 15
            grab = 1
            sfx_play(sndMorphBallSlot)
        }
    }
    if (grab == 1)
    {
        if (fangy > 2)
            fangy -= 0.2
        if (fangy <= 2)
        {
            fangy = 2
            with (oBattery)
                instance_destroy()
            sfx_play(sndBirdSwitchEnable)
            state = 1
            statetime = 0
            grab = 0
        }
    }
}
if (state == 40)
{
    if (!isCollisionBottom(jl))
        yVel += 0.25
    if (clawlangle > 0)
        clawlangle -= 2
    if (clawrangle < 0)
        clawrangle += 2
    if ((!isCollisionBottom(jl)) && yVel == 0)
        alarm[1] = 1
    if (isCollisionBottom(jl) && yVel > 0)
    {
        xVel = 0
        yVel = 0
        clawlangle = -34
        clawrangle = 34
        alarm[0] = 110
    }
}
if (state == 50)
{
    sfx_stop(sndSJLoop)
    with (oEMP)
        instance_destroy()
    oAutoHordeXEyes.image_index = 5
    if (!isCollisionBottom(12))
        yVel += 0.25
    else
    {
        yVel = 0
        xVel = 0
    }
    if (isCollisionBottom(12) && xVel == 0 && yVel == 0 && dsolid == 0)
    {
        disolid1 = instance_create((x - 32), (y - 22), oAntiOoBSolid4x1)
        disolid1.visible = false
        disolid2 = instance_create((x - 48), (y - 22), oSlope1)
        disolid1.visible = false
        disolid3 = instance_create((x + 34), (y - 22), oSlope2)
        disolid1.visible = false
        disolid4 = instance_create((x - 48), (y - 6), oSolid1)
        disolid1.visible = false
        disolid4.image_xscale = 6
        disolid4.image_yscale = 1
        dsolid = 1
        clawlangle = -44
        clawrangle = 44
    }
    if collision_rectangle((x - 47), (y - 6), (x + 47), (y + 9), oCharacter, 0, 1)
        samin = 1
    else
        samin = 0
    if (statetime == 360)
        flashing = 60
}
if (state == 51)
{
    if (statetime == 0)
    {
        plat = instance_create((x - 31), (y - 20), oAntiOoBSolid4x1)
        plat.image_yscale = 3
    }
}
if (state == 100)
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    alarm[3] = -1
    alarm[4] = -1
    alarm[5] = -1
    alarm[6] = -1
    with (oEMP)
        instance_destroy()
    if (xVel > 0)
        xVel -= 0.25
    else if (xVel < 0)
        xVel += 0.25
    if (!isCollisionBottom(1))
    {
        yVel += 0.25
        if (clawlangle > -55)
        {
            clawlangle -= 1
            clawrangle += 1
        }
    }
    if (isCollisionBottom(1) && yVel > 0)
    {
        sfx_play(sndDrillHit)
        xVel = 0
        yVel = 0
        clawlangle = -55
        clawrangle = 55
    }
}
if (fxtimer < 9)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
statetime += 1
moveTo(xVel, yVel)
