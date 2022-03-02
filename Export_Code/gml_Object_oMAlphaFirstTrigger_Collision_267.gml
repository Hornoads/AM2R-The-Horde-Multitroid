if (room == rm_a0h01 && global.event[0] == 0)
{
    with (oHornoadWanderSpawn)
        alarm[0] = 420
    with (oHornoad)
    {
        enemy_death()
        instance_destroy()
    }
    global.event[0] = 1
    ecam = instance_create(x, oCharacter.y, oEventCamera2)
    ecam.targetx = oMEgg1.x
    ecam.targety = oMEgg1.y
    ecam.ratio = 8
    ecam.alarm[0] = 320
    ecam.focusbacktime = 25
    view_object[0] = oEventCamera2
    mus_current_fadeout()
    with (oMAlphaTriggerFirstCocoon)
    {
        alarm[2] = 60
        alarm[0] = 250
        alarm[1] = 280
    }
    instance_destroy()
}
else if (room == rm_a0h05 && global.event[5] == 0 && instance_exists(oHordeTriggerProx))
{
    global.event[5] = 1
    ecam = instance_create(x, (y - 16), oEventCamera2)
    ecam.targetx = oHordeTriggerProx.x
    ecam.targety = y
    ecam.ratio = 8
    ecam.alarm[0] = 240
    ecam.focusbacktime = 20
    view_object[0] = oEventCamera2
    mus_current_fadeout()
    mus_play(musEnding)
    with (oHordeTriggerProx)
        alarm[0] = 1
    instance_destroy()
}
else
    instance_destroy()
