if (GRAB == 1 && hurt == 0 && eat == 0)
{
    oCharacter.x = (x + 8)
    if (oCharacter.state == 23 || oCharacter.state == 24)
        oCharacter.y = (y + 4)
    else
        oCharacter.y = (y + 16)
}
else if (eat == 1)
{
    oCharacter.x = eatx
    oCharacter.y = eaty
}
stlx = (x + 4)
stly = (y - 4)
strx = (startx + (endx * reel))
stry = ((starty - 4) + (endy * reel))
sbrx = (startx + (endx * reel))
sbry = ((starty + 4) + (endy * reel))
sblx = (x + 4)
sbly = (y + 4)
