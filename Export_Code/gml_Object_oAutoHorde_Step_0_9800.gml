if (stun == 0 && state != 100)
{
    if (state == 1)
        state = 2
    if (state == 2)
    {
        if (!isCollisionBottom(1))
        {
            if (highjump == 0)
                yVel += 0.25
            else if (highjump == 1)
            {
                if (((oCharacter.y + 96) > y || isCollisionTop(1)) && yVel < 0)
                    yVel += 0.5
                if (yVel >= 0)
                    highjump = 0
            }
            if (distance_to_point(oCharacter.x, y) < 128)
            {
                if (xVel > 8)
                    xVel -= 0.1
                if (xVel < -8)
                    xVel -= -0.1
            }
        }
        if (clawangle > 0)
            clawangle -= 2
        if ((!isCollisionBottom(1)) && yVel == 0)
            event_user(1)
        if (isCollisionBottom(1) && yVel > 0)
        {
            highjump = 0
            xVel = 0
            yVel = 0
            clawangle = -30
            statetime = 0
            alarm[0] = jt
            sfx_play(sndA4DoorBolt)
            if (eye != -1)
                event_user(15)
        }
    }
    if (state == 10)
    {
        if (!isCollisionBottom(1))
            yVel += 0.25
        if (clawangle > 0)
            clawangle -= 2
        if (isCollisionBottom(1) && yVel > 0)
        {
            sfx_play(sndA4DoorBolt)
            highjump = 0
            xVel = 0
            yVel = 0
            clawangle = -30
            alarm[0] = 30
        }
        if (x > 320)
        {
            instance_destroy()
            with (oEventCamera)
                alarm[0] = 1
            with (oOminousTrigger)
                alarm[0] = 10
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    event_user(2)
    expl = instance_create(x, y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    repeat (5)
    {
        expl = instance_create(((x - 20) + random(40)), ((y - 20) + random(40)), oFXAnimSpark)
        expl.image_speed = (0.4 + random(0.4))
        expl.additive = 0
        expl.sprite_index = sExpl1
    }
    spawn_rnd_pickup(100)
    instance_create(x, y, oHordeMini)
    PlaySoundMono(sndTesterDeath)
    repeat (40)
        instance_create(x, y, oDebris)
    instance_destroy()
}
if (y > global.waterlevel && global.waterlevel != 0)
{
    if (inwater == 0)
    {
        instance_create(x, global.waterlevel, oSplash)
        inwater = 1
        sfx_play(sndWaterExit)
    }
}
else if (inwater == 1)
{
    instance_create(x, global.waterlevel, oSplash)
    inwater = 0
    sfx_play(sndWaterExit)
}
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (stun > 0)
    stun -= 1
if (flashing > 0)
    flashing -= 1
if (global.event[serialnumber] >= 1 && (!dead))
{
    myhealth = 0
    state = 100
    statetime = 0
    global.kills += 1
    dead = 1
}
