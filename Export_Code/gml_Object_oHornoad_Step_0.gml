event_inherited()
enemy_active_check(256)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0 && state != 100)
{
    if (image_angle == 0)
    {
        yVel += 0.2
        if (oCharacter.y <= (y - 32) && target == 1)
            jumpheight = -4
        else
            jumpheight = -2
        if (state == 4)
        {
            if (image_index >= 3 && image_index <= 4)
            {
                y -= 1
                yVel = (jumpheight - (timer / 50))
                xVel = (1 * facing)
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
        if (scared == 0)
        {
            if (isCollisionRight(4) && facing == 1 && state == 1)
            {
                facing = -1
                state = 3
            }
            if (isCollisionLeft(4) && facing == -1 && state == 1)
            {
                facing = 1
                state = 3
            }
        }
        if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
        {
            projectile = instance_create(x, (y - 4), oHornoadSpit)
            projectile.vspeed = -3
            projectile.hspeed = (6 * facing)
            canattack = 0
        }
    }
    else if (image_angle == 180)
    {
        yVel -= 0.2
        if (oCharacter.y >= (y + 32) && target == 1)
            jumpheight = 4
        else
            jumpheight = 2
        if (state == 4)
        {
            if (image_index >= 3 && image_index <= 4)
            {
                y += 1
                yVel = (jumpheight + (timer / 50))
                xVel = ((1 * facing) * -1)
            }
        }
        if (isCollisionTop(1) == 1)
        {
            yVel = 0
            if (state == 4 && image_index >= 5)
            {
                state = 1
                xVel = 0
            }
        }
        if (isCollisionRight(4) && facing == -1 && state == 1)
        {
            facing = 1
            state = 3
        }
        if (isCollisionLeft(4) && facing == 1 && state == 1)
        {
            facing = -1
            state = 3
        }
        if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
        {
            projectile = instance_create(x, (y + 4), oHornoadSpit)
            projectile.vspeed = -3
            projectile.hspeed = ((6 * facing) * -1)
            canattack = 0
        }
    }
    if (image_angle == 90)
    {
        xVel += 0.2
        if (oCharacter.x <= (x - 48) && target == 1)
            jumpheight = -4
        else
            jumpheight = -2
        if (state == 4)
        {
            if (image_index >= 3 && image_index <= 4)
            {
                x -= 1
                xVel = (jumpheight - (timer / 50))
                yVel = (-1 * facing)
            }
        }
        if (isCollisionRight(1) == 1)
        {
            xVel = 0
            if (state == 4 && image_index >= 5)
            {
                state = 1
                yVel = 0
            }
        }
        if (isCollisionTop(4) && facing == 1 && state == 1)
        {
            facing = -1
            state = 3
        }
        if (isCollisionBottom(4) && facing == -1 && state == 1)
        {
            facing = 1
            state = 3
        }
        if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
        {
            projectile = instance_create((x - 4), y, oHornoadSpit)
            projectile.hspeed = -3
            projectile.vspeed = (-6 * facing)
            canattack = 0
        }
    }
    if (image_angle == 270)
    {
        xVel -= 0.2
        if (oCharacter.y <= (y - 48) && target == 1)
            jumpheight = 4
        else
            jumpheight = 2
        if (state == 4)
        {
            if (image_index >= 3 && image_index <= 4)
            {
                x += 1
                xVel = (jumpheight - (timer / 50))
                yVel = (1 * facing)
            }
        }
        if (isCollisionLeft(1) == 1)
        {
            xVel = 0
            if (state == 4 && image_index >= 5)
            {
                state = 1
                yVel = 0
            }
        }
        if (isCollisionBottom(4) && facing == 1 && state == 1)
        {
            facing = -1
            state = 3
        }
        if (isCollisionTop(4) && facing == -1 && state == 1)
        {
            facing = 1
            state = 3
        }
        if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
        {
            projectile = instance_create(x, (y - 4), oHornoadSpit)
            projectile.hspeed = 3
            projectile.vspeed = (6 * facing)
            canattack = 0
            sfx_play(sndCroak1)
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    canbehit = 0
    if (statetime == 0)
    {
        if (pbea == 1)
            hornoad_death()
        else
            enemy_death()
    }
}
if (frozen == 0)
    image_speed = 0.2
else
    image_speed = 0
if (state == 1)
    sprite_index = sHornoadIdle
if (state == 2)
    sprite_index = sHornoadShake
if (state == 3)
    sprite_index = sHornoadTurn
if (state == 4)
    sprite_index = sHornoadJump
if (state == 5)
    sprite_index = sHornoadAttack
if (state == 100 && sprite_index == sHornoadDeath)
    image_speed = 0.3
