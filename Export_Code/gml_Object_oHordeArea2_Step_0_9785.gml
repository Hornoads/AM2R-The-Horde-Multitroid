action_inherited()
enemy_active_check(128)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (oCharacter.y <= (y - 48) && target == 1)
        jumpheight = -7
    else
        jumpheight = -3
    if (state == 4)
    {
        if (image_index >= 3 && image_index <= 4)
        {
            y -= 1
            yVel = (jumpheight - (timer / 100))
            xVel = ((1 + (distance_to_object(oCharacter) * 0.012)) * facing)
        }
    }
    if (isCollisionTop(1) == 1)
        yVel = (0.5 + (timer / 75))
    if (isCollisionBottom(1) == 1)
    {
        yVel = 0
        if (state == 4 && image_index >= 5)
        {
            sfx_play(sndLandWet)
            state = 1
            xVel = 0
        }
    }
    if (yVel == 0 && xVel == 0 && state == 1 && facing == 1 && x >= (oCharacter.x + 16))
    {
        facing = -1
        state = 3
    }
    if (yVel == 0 && xVel == 0 && state == 1 && facing == -1 && x <= (oCharacter.x - 16))
    {
        facing = 1
        state = 3
    }
    if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
    {
        projectile = instance_create(x, (y + 16), oHordeArea2Spit)
        projectile.vspeed = (-1 - random(4))
        projectile.hspeed = (8 * facing)
        canattack = 0
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    event_user(16)
    enemy_death()
}
if (frozen == 0)
    image_speed = 0.2
else
    image_speed = 0
if (state == 1)
    sprite_index = sHordeIdle
if (state == 2)
    sprite_index = sHordeIdle
if (state == 3)
    sprite_index = sHordeTurn
if (state == 4)
    sprite_index = sHordeJump
if (state == 5)
    sprite_index = sHordeAttack
if (unique > 0)
{
    if (global.event[unique] > 0 && (!dead))
    {
        myhealth = 0
        state = 100
        statetime = -1
        dead = 1
    }
}
