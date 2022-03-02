boosting = 0
canbehit = 1
statetime = 0
if (eyemode >= 5)
{
    eyemode = choose(0, 1, 2, 3, 4)
    alarm[4] = 160
}
switch eyemode
{
    case 0:
        state = 2
        oAutoHordeXEyes.image_index = 0
        alarm[0] = 70
        break
    case 1:
        state = 10
        oAutoHordeXEyes.image_index = 1
        alarm[0] = 70
        break
    case 2:
        state = 20
        boosting = 1
        if (x < (room_width / 2))
            xveloffset = -1
        if (x >= (room_width / 2))
            xveloffset = 1
        oAutoHordeXEyes.image_index = 2
        alarm[0] = 70
        break
    case 3:
        state = 30
        alarm[1] = 60
        oAutoHordeXEyes.image_index = 3
        alarm[0] = 90
        break
    case 4:
        state = 40
        alarm[0] = 80
        alarm[1] = -1
        alarm[4] = 160
        alarm[5] = 90
        oAutoHordeXEyes.image_index = 4
        break
    case 5:
        eyemode = choose(0, 1, 2, 3, 4)
        alarm[4] = 160
        event_user(1)
        break
}

sfx_play(sndAutoCroak)
