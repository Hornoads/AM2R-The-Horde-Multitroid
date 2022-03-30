if (state < 7 && sand == 0 && collision_line(x, y, oCharacter.x, (oCharacter.y - 16), oBlockSand, false, true))
{
    sand = 1
    state = 7
    spdelay = 90
    statetime = 0
    turndelay = 1
}
