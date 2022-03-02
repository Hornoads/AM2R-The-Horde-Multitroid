if (state == 2)
{
    if isCollisionBottom(jl)
    {
        if ((trgty - 16) > (y - 32))
        {
            yVel = -6
            xveloffset = 3
        }
        if ((trgty - 16) < (y - 32) && trgty > (y - 112))
        {
            yVel = -9
            xveloffset = 2
        }
        if ((trgty - 16) < (y - 112))
        {
            yVel = -11
            xveloffset = 1
        }
        if (trgtx > (x + 16))
            xVel = ((distance_to_point(trgtx, y) * 0.01) + xveloffset)
        if (trgtx < (x - 16))
            xVel = ((distance_to_point(trgtx, y) * -0.01) - xveloffset)
        if (trgtx >= (x - 16) && trgtx <= (x + 16))
            xVel = 0
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
else if (state == 10)
{
    if isCollisionBottom(jl)
    {
        yVel = -8.5
        if (trgtx >= x)
            xVel = 2.4
        if (trgtx < x)
            xVel = -2.4
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
else if (state == 20)
{
    if isCollisionBottom(jl)
    {
        yVel = -4.7
        if (oCharacter.x >= x)
            xVel = (8 + (irandom(10) * 0.1))
        if (oCharacter.x < x)
            xVel = (-8 - (irandom(10) * 0.1))
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
else if (state == 30)
{
    if isCollisionBottom(jl)
    {
        if ((oCharacter.y - 16) > (y - 32))
        {
            yVel = -9
            xveloffset = 5
        }
        if ((oCharacter.y - 16) < (y - 32) && oCharacter.y > (y - 112))
        {
            yVel = -10
            xveloffset = 5
        }
        if ((oCharacter.y - 16) < (y - 112))
        {
            yVel = -12
            xveloffset = 4
        }
        if (oCharacter.x > (x + 16))
            xVel = xveloffset
        if (oCharacter.x < (x - 16))
            xVel = (xveloffset * -1)
        if (oCharacter.x >= (x - 8) && oCharacter.x <= (x + 8))
            xVel = 0
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
if (state == 37)
{
    if isCollisionBottom(jl)
    {
        if ((trgty - 16) > (y - 32))
            yVel = -6
        if ((trgty - 16) < (y - 32) && trgty > (y - 112))
            yVel = -9
        if ((trgty - 16) < (y - 112))
            yVel = -12
        if (trgtx > (x + 16))
            xVel = (3 + (distance_to_point(trgtx, y) * 0.01))
        if (trgtx < (x - 16))
            xVel = ((3 - (distance_to_point(trgtx, y) * 0.01)) * -1)
        if (trgtx >= (x - 16) && trgtx <= (x + 16))
            xVel = ((distance_to_point(trgtx, trgty) * -0.05) * facing)
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
else if (state == 40)
{
    if isCollisionBottom(jl)
    {
        if ((oCharacter.y - 16) > (y - 32))
        {
            yVel = -8
            xveloffset = 1
        }
        if ((oCharacter.y - 16) < (y - 32) && oCharacter.y > (y - 112))
        {
            yVel = -10
            xveloffset = 0
        }
        if ((oCharacter.y - 16) < (y - 112))
        {
            yVel = -12
            xveloffset = -1
        }
        if (oCharacter.x > (x + 16))
            xVel = (3 + xveloffset)
        if (oCharacter.x < (x - 16))
            xVel = (-3 - xveloffset)
        if (oCharacter.x >= (x - 16) && oCharacter.x <= (x + 16))
            xVel = 0
        clawlangle = 38
        clawrangle = -38
        sfx_play(sndALPressUp)
    }
}
