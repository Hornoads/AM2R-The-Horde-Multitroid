action_inherited()
enemy_active_check(20)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (oCharacter.y <= (y - 32) && target == 1)
        jumpheight = -4
    else
        jumpheight = -3
    if (state == 4)
    {
        if (image_index >= 3 && image_index <= 4)
        {
            y -= 1
            yVel = (jumpheight - (timer / 50))
            xVel = (2 * facing)
        }
    }
    if (isCollisionBottom(1) == 1)
    {
        yVel = 0
        if (state == 4 && image_index >= 5)
        {
            state = 1
            xVel = 0
        }
    }
    if (isCollisionRight(4) && facing == 1 && state == 1)
        facing = -1
    if (isCollisionLeft(4) && facing == -1 && state == 1)
        facing = 1
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
    enemy_death()
if (frozen == 0)
    image_speed = 0.2
else
    image_speed = 0
if (state == 1)
    sprite_index = sHordeMiniIdle
if (state == 4)
    sprite_index = sHordeMiniJump
