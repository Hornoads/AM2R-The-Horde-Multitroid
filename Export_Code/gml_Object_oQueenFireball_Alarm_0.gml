var spwn;
switch oQueen.phase
{
    case 0:
        event_user(1)
        break
    case 1:
        event_user(2)
        break
    case 2:
        event_user(3)
        break
    case 3:
        event_user(4)
        break
}

spwn = instance_create((x + 32), (y - 32), oHordeFlame)
spwn.myhealth = 40
instance_destroy()
