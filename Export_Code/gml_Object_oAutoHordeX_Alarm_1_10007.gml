var proj, prj1, prj2, prj3, prj4, projtyp;
if (state == 2 || state == 40)
{
    repeat rptmiss
    {
        projtyp = irandom(10)
        if (projtyp >= 5 && state == 2)
        {
            if (!sfx_isplaying(sndFireMissile))
                sfx_play(sndFireMissile)
            prj1 = instance_create((x + irandom(23)), (y + irandom(15)), oTesterMissile)
            prj2 = instance_create((x - irandom(22)), (y + irandom(15)), oTesterMissile)
        }
        else
        {
            if (!sfx_isplaying(sndA4ElecAmb))
                sfx_play(sndA4ElecAmb)
            prj1 = instance_create((x + irandom(23)), (y + irandom(15)), oGunzooProj2)
            prj1.alarm[1] = (70 + state)
            prj2 = instance_create((x - irandom(22)), (y + irandom(15)), oGunzooProj2)
            prj2.alarm[1] = (110 + state)
        }
    }
}
if ((state == 10 || state == 11) && yVel == 0)
{
    prj1 = instance_create((x - 22), (y + 15), oA3Beam)
    prj2 = instance_create((x - 22), (y + 15), oA3Beam)
    prj3 = instance_create((x + 23), (y + 15), oA3Beam)
    prj4 = instance_create((x + 23), (y + 15), oA3Beam)
    prj1.alarm[0] = 2
    prj1.image_yscale = 3
    prj2.alarm[0] = 2
    prj2.image_yscale = -2
    prj3.alarm[0] = 2
    prj3.image_yscale = 3
    prj4.alarm[0] = 2
    prj4.image_yscale = -2
    if (xVel == 3.7 && oCharacter.x < (x - 54))
        xVel = -3.7
    else if (xVel == -3.7 && oCharacter.x > (x + 54))
        xVel = 3.7
    sfx_play(sndALWelder)
    alarm[1] = (24 - (4 * xtreme))
}
if (state == 30 || state == 31)
{
    if (yVel < 0)
    {
        proj = instance_create(((x - 32) + irandom(64)), (y + 16), oAutoHordeXFlame)
        proj.direction = (265 + irandom(10))
        proj.speed = (yVel * -1)
    }
    if (yVel > 0)
    {
        proj = instance_create(((x - 32) + irandom(64)), (y + 16), oAutoHordeXFlame)
        proj.direction = (85 + irandom(10))
        proj.speed = (yVel * -0.9)
    }
    if (yVel == 0)
    {
        proj = instance_create(((x - 32) + irandom(64)), (y + 8), oAutoHordeXFlame)
        proj.direction = irandom(180)
        proj.speed = 2.8
    }
    proj.depth = choose(0, -15, -30)
    alarm[1] = 3
}
