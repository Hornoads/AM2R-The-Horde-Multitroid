var smoke;
action_inherited()
enemy_active_check(20)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (oCharacter.y <= y && target == 1)
        jumpheight = -7
    else
        jumpheight = -3
    if (state == 4)
    {
        if (image_index >= 3 && image_index <= 4)
        {
            y -= 1
            yVel = (jumpheight - (timer / 100))
            xVel = ((1 + (distance_to_object(oCharacter) * 0.014)) * facing)
        }
    }
    if (isCollisionTop(1) == 1)
        yVel = (1 + (timer / 75))
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
    if (xtreme == 1)
    {
        if ((!isCollisionBottom(1)) && distance_to_object(oCharacter) < 64)
        {
            alarm[1] = 1
            flashing = 5
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
    if (state == 1 && image_index >= 4.2 && image_index <= 5)
    {
        smoke = instance_create((x + ((9 + irandom(9)) * facing)), (y + 11), oHordeFlameSmoke)
        smoke.direction = (90 - (random(15) * facing))
        smoke.speed = 1
        if (!sfx_isplaying(sndSteam))
            sfx_play(sndSteam)
    }
    if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
        alarm[1] = 1
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
    sprite_index = sHordeArea4Idle
if (state == 2)
    sprite_index = sHordeArea4Idle
if (state == 3)
    sprite_index = sHordeArea4Turn
if (state == 4)
    sprite_index = sHordeArea4Jump
if (state == 5)
    sprite_index = sHordeArea4Attack
