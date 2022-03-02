enemy_active_check(30)
enemy_target_check(120, 1)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        accelx = 0.05
        accely = 0.05
        maxspx = 0.9
        maxspy = 0.9
        if (point_distance(x, y, targetx, targety) < 16)
        {
            currtgt += 1
            if (tgtx[currtgt] == startx && tgty[currtgt] == starty)
                currtgt = 0
            targetx = tgtx[currtgt]
            targety = tgty[currtgt]
        }
        if (point_distance(x, y, oCharacter.x, oCharacter.y) < 88 && statetime > 120)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        accelx = 0.1
        accely = 0.05
        maxspx = (1.1 + global.currentsuit)
        maxspy = (0.7 + global.currentsuit)
        targetx = oCharacter.x
        targety = (oCharacter.y - 16)
        if (statetime >= 300)
        {
            state = 0
            statetime = 0
        }
    }
    if (targetx > x)
        xVel += accelx
    if (targetx < x)
        xVel -= accelx
    if (targety > y)
        yVel += accely
    if (targety < y)
        yVel -= accely
    xVel = min(xVel, maxspx)
    xVel = max(xVel, (-maxspx))
    yVel = min(yVel, maxspy)
    yVel = max(yVel, (-maxspy))
    if (yVel < 0 && y < (global.waterlevel + 20))
        yVel = 0
    if (xVel >= 0)
        facing = 1
    else
        facing = -1
    if (stun == 0)
        moveTo(xVel, yVel)
    image_speed = 0.4
}
if (state == 100)
{
    if (sh == 1)
    {
        aoe = instance_create(x, y, oHordeMiniShockAOE)
        if (pipeid != self)
        {
            with (pipeid)
                pod -= 1
        }
    }
    enemy_death()
}
event_inherited()
