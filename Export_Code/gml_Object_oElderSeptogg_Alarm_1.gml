var room_let, room_num, inst;
switch real(string_char_at(room_get_name(room), 5))
{
    case 1:
        flying_sprite = sElderSeptogg_tlRock1AN
        carrying_sprite = 1559
        material = 1
        break
    case 2:
        flying_sprite = sElderSeptogg_tlRock2NB
        carrying_sprite = 1561
        material = 1
        break
    case 3:
        room_let = string(string_char_at(room_get_name(room), 6))
        if (room_let == "b")
        {
            flying_sprite = sElderSeptogg_tlArea3Breed
            carrying_sprite = 1577
            material = 5
        }
        else
        {
            flying_sprite = sElderSeptogg_tlRock3A
            carrying_sprite = 1563
            material = 1
        }
        break
    case 4:
        room_let = string(string_char_at(room_get_name(room), 6))
        if (room_let == "b")
        {
            flying_sprite = sElderSeptogg_tlRock4B
            carrying_sprite = 1575
            material = 1
        }
        else
        {
            flying_sprite = sElderSeptogg_tlRock4A
            carrying_sprite = 1565
            material = 1
        }
        break
    case 5:
        flying_sprite = sElderSeptogg_tlRock5A
        carrying_sprite = 1567
        material = 1
        break
    case 6:
        flying_sprite = sElderSeptogg_tlRock6A
        carrying_sprite = 1569
        material = 1
        break
    default:
        room_num = real(string((string_char_at(room_get_name(room), 7) + string_char_at(room_get_name(room), 8))))
        if (room_num >= 16 && room_num <= 23)
        {
            flying_sprite = sElderSeptogg_tlGreenCrystals
            carrying_sprite = 1557
            material = 1
            break
        }
        else if ((room_num >= 24 && room_num <= 28) || room_num == 11)
        {
            flying_sprite = sElderSeptogg_tlRock3A
            carrying_sprite = 1563
            material = 1
            break
        }
        else if (room_num >= 5 && room_num <= 15)
        {
            flying_sprite = sElderSeptogg_tlRock1AN
            carrying_sprite = 1559
            material = 1
            break
        }
        else if (room_num >= 29)
        {
            flying_sprite = sElderSeptogg_tlRock4A
            carrying_sprite = 1565
            material = 1
            break
        }
        else
        {
            switch global.timeofday
            {
                case 1:
                    flying_sprite = sElderSeptoggTwilight
                    carrying_sprite = 1573
                    break
                case 2:
                    flying_sprite = sElderSeptoggNight
                    carrying_sprite = 1571
                    break
                default:
                    flying_sprite = sElderSeptogg
                    carrying_sprite = 1555
            }

            material = 2
        }
}

if (AFDCheck() == 1 || irandom(21) >= 19)
{
    flying_sprite = 1834
    carrying_sprite = 1835
}
sprite_index = flying_sprite
if (room == rm_a0h05)
    exit
repeat parent
{
    inst = instance_create(x, y, oBabySeptogg)
    with (inst)
    {
        parent = other.id
        event_user(0)
    }
}
