alarm[2] = (60 + random(90))
if (active == 1 && state == 1 && target == 1 && y <= (oCharacter.y + 64) && y >= (oCharacter.y - 64))
{
    state = 5
    image_index = 0
    canattack = 1
}
