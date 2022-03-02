if (state != 100)
{
    state = 1
    if (global.difficulty == 0)
        alarm[0] = (timer * 1.2)
    if (global.difficulty == 1)
        alarm[0] = timer
    if (global.difficulty >= 2)
        alarm[0] = (timer * 0.4)
}
