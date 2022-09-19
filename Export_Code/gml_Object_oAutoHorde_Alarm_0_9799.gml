if (yVel == 0)
{
    if (state == 2)
    {
        jumping = 1
        if ((oCharacter.y + 16) >= y)
        {
            sfx_play(sndAutoadJump)
            yVel = -6
        }
        else if ((oCharacter.y + 16) < y && (oCharacter.y + 112) >= y)
        {
            sfx_play(sndALPressUp)
            yVel = -8
        }
        else if ((oCharacter.y + 112) < y && (oCharacter.y + 208) >= y)
        {
            sfx_play(sndA4DoorOpen)
            yVel = -11
        }
        else
        {
            sfx_play(sndA4DoorOpen)
            yVel = -14
            highjump = 1
        }
        if (oCharacter.x > x)
            xVel = (2.7 + (distance_to_point(oCharacter.x, y) * 0.01))
        if (oCharacter.x < x)
            xVel = (-2.7 - (distance_to_point(oCharacter.x, y) * 0.01))
        clawangle = 36
        if instance_exists(oAutoHordeClaw)
        {
            leg1.angle = 36
            leg2.angle = 36
        }
    }
    if (state == 10)
    {
        sfx_play(sndAutoadJump)
        yVel = -5.7
        xVel = 5
        clawangle = 36
        leg1.angle = 36
        leg2.angle = 36
    }
}
alarm[0] = 210
