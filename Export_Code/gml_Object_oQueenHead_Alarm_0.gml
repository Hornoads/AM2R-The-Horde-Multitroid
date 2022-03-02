var projh;
if (numproj > 0)
{
    instance_create((x + 10), y, oQueenProj)
    sfx_play(sndFireball)
    numproj -= 1
    alarm[0] = projdelay
}
if (numproj == 0 && instance_number(oHornoad) < 16)
{
    projh = instance_create((x + 10), y, oHornoad)
    projh.state = 4
    projh.xVel = 7
}
