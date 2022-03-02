alarm[2] = (30 + irandom(160))
if (active == 1 && state == 1 && target == 1 && y <= oCharacter.y && y >= (oCharacter.y - 48))
{
    state = 5
    image_index = 0
    canattack = 1
    statetime = 0
}
