if (state == 2 && isCollisionBottom(1) && yVel == 0)
{
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
        xVel = (2.8 + (distance_to_point(oCharacter.x, y) * 0.01))
    if (oCharacter.x < x)
        xVel = (-2.8 - (distance_to_point(oCharacter.x, y) * 0.01))
    clawangle = 36
    leg1.angle = 36
    leg2.angle = 36
}
if (state == 10 && isCollisionBottom(1) && yVel == 0)
{
    sfx_play(sndAutoadJump)
    yVel = -5.7
    xVel = 5
    clawangle = 36
    leg1.angle = 36
    leg2.angle = 36
}
