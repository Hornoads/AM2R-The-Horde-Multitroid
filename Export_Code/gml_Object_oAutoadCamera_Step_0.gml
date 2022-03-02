if (!instance_exists(oAutoadPlayer))
    inactive_steps += 1
if (inactive_steps > 60)
{
    targetx = oCharacter.x
    targety = (oCharacter.y - 12)
}
else if instance_exists(oAutoadPlayer)
{
    targetx = oAutoadPlayer.x
    targety = oAutoadPlayer.y
}
if (x != targetx)
    x += ((targetx - x) / 8)
if (y != targety)
    y += ((targety - y) / 8)
if (inactive_steps == 100)
{
    view_object[0] = oCamera
    with (oCharacter)
    {
        state = 23
        statetime = 0
        morphing = 0
        turning = 0
    }
    with (oAutoadControlTrigger)
    {
        alarm[0] = 120
        active = 0
        activated = 0
    }
    if (room == rm_a3a28)
    {
        with (oCamera)
        {
            lockx = 1
            locky = 1
            targetx = 480
            targety = 400
        }
        with (oEnemy)
            instance_destroy()
    }
    instance_destroy()
}
