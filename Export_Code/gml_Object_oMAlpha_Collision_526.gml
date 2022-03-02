if (xVel > 0)
    xVel = 0
if (state == 5)
{
    state = 3
    statetime = 0
    turndelay = 30
    xVel = 0
    yVel = 0
}
if (x > (other.x - 16))
    x -= 1
