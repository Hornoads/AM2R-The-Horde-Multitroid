action_inherited()
enemy_active_check(64)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (oCharacter.y <= (y - 32) && target == 1)
        jumpheight = -6
    else
        jumpheight = -3
    if (state == 4)
    {
        if (image_index >= 1 && image_index <= 2)
        {
            y -= 1
            yVel = (jumpheight - (timer / 50))
            xVel = ((1 + (distance_to_object(oCharacter) * 0.012)) * facing)
        }
    }
    if (isCollisionBottom(1) == 1)
    {
        yVel = 0
        if (state == 4 && image_index >= 3)
        {
            state = 1
            xVel = 0
            sfx_play(sndHornoadLand)
        }
    }
    if (isCollisionRight(4) && facing == 1 && state == 1 && x >= oCharacter.x)
    {
        state = 3
        facing = -1
    }
    if (isCollisionLeft(4) && facing == -1 && state == 1 && x <= oCharacter.x)
    {
        facing = 1
        state = 3
    }
    if (yVel == 0 && xVel == 0 && state == 1 && facing == 1 && x >= oCharacter.x)
    {
        facing = -1
        state = 3
    }
    if (yVel == 0 && xVel == 0 && state == 1 && facing == -1 && x <= oCharacter.x)
    {
        facing = 1
        state = 3
    }
    if (state == 4 && isCollisionTop(1))
        yVel += 1
    if (state == 5 && image_index >= 1 && image_index <= 2 && canattack == 1)
    {
        projectile = instance_create(x, (y - 8), oHordeArea1Spit)
        projectile.vspeed = -3
        if (oCharacter.y < projectile.y)
            projectile.vspeed += (0.1 * (oCharacter.y - projectile.y))
        projectile.hspeed = (7 * facing)
        canattack = 0
        sfx_play(sndCroak1)
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
    sprite_index = sHornoadXIdle
if (state == 2)
    sprite_index = sHornoadXTwitch
if (state == 3)
    sprite_index = sHornoadXIdle
if (state == 4)
    sprite_index = sHornoadXJump
if (state == 5)
    sprite_index = sHornoadXBite
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
