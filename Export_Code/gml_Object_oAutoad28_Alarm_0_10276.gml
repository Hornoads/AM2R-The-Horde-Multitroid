if isCollisionLeft(1)
    facing = 1
if isCollisionRight(1)
    facing = -1
if (state == 2 && isCollisionBottom(1) && instance_exists(oAutoadPlayer))
{
    if ((oAutoadPlayer.y - 20) > y)
        yVel = -3
    if ((oAutoadPlayer.y - 20) < y)
        yVel = -5
    xVel = (2 * facing)
    clawangle = 36
    sfx_play(sndAutoadJump)
}
alarm[0] = 60
