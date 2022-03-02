action_inherited()
enemy_active_check(160)
enemy_target_check(160, 0)
if (active == 1 && frozen == 0)
{
    yVel += (0.2 * image_yscale)
    if (oCharacter.y <= (y - 48) && target == 1)
        jumpheight = (-7 * image_yscale)
    else
        jumpheight = (-3 * image_yscale)
    if (state == 4)
    {
        if (image_index >= 3 && image_index <= 4)
        {
            y -= (1 * image_yscale)
            yVel = (jumpheight - (timer / 100))
            xVel = ((1 + (distance_to_object(oCharacter) * 0.01)) * facing)
        }
    }
    if (image_yscale == 1)
    {
        if (isCollisionTop(1) == 1)
            yVel = ((1 + (timer / 75)) * image_yscale)
        if (isCollisionBottom(1) == 1)
        {
            yVel = 0
            if (state == 4 && image_index >= 5)
            {
                sfx_play(sndA4ElecAmb)
                state = 1
                xVel = 0
            }
        }
    }
    if (image_yscale == -1)
    {
        if (isCollisionBottom(1) == 1)
            yVel = ((1 + (timer / 75)) * image_yscale)
        if (isCollisionTop(1) == 1)
        {
            yVel = 0
            if (state == 4 && image_index >= 5)
            {
                sfx_play(sndA4ElecAmb)
                state = 1
                xVel = 0
            }
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
    if (state == 5 && canattack == 1 && (!instance_exists(oMGammaElec)))
    {
        elec = instance_create((x + (1 * facing)), (y + (20 * image_yscale)), oMGammaElec)
        elec.facing = facing
        elec.rotspeed = 5
        if (facing == 1)
            elec.image_angle = -35
        if (facing == -1)
            elec.image_angle = 215
        sfx_play(sndMGammaElec)
        canattack = 0
        xVel = 0
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    event_user(1)
    enemy_death()
}
if (frozen == 0)
    image_speed = 0.2
else
    image_speed = 0
if (state == 1)
    sprite_index = sHordeArea3Idle
if (state == 2)
    sprite_index = sHordeArea3Grimace
if (state == 3)
    sprite_index = sHordeElecTurn
if (state == 4)
    sprite_index = sHordeElecJump
if (state == 5)
    sprite_index = sHordeElecAttack
