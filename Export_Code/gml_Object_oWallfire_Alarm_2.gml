if (state != 100)
{
    state = 1
    if (mad == 2)
    {
        if (global.difficulty == 0)
            alarm[0] = timer
        if (global.difficulty == 1)
            alarm[0] = (timer * 0.5)
        if (global.difficulty == 2)
            alarm[0] = (timer * 0.25)
    }
    else if (mad == 0)
    {
        if (global.difficulty == 0)
            alarm[0] = (timer * 1.5)
        if (global.difficulty == 1)
            alarm[0] = timer
        if (global.difficulty == 2)
            alarm[0] = (timer * 0.5)
    }
    else if (mad == 1)
    {
        if (global.difficulty == 0)
            alarm[0] = (timer * 1.25)
        if (global.difficulty == 1)
            alarm[0] = (timer * 0.75)
        if (global.difficulty == 2)
            alarm[0] = (timer * 0.375)
    }
}
