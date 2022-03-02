var prj1;
if (disabled == 0)
{
    if (instance_number(oAutoad) < 2)
    {
        sfx_play(sndA2WJValve)
        prj1 = instance_create(x, y, oAutoad)
        prj1.myhealth = 40
        prj1.damage = 8
    }
}
alarm[4] = 160
