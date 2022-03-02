var prj;
if (state == 2 && statetime < 80)
{
    sprite_index = sHordeBreederAttack
    image_index = 1
    image_speed = 0
    hitbeam = 1
    hitmissile = 1
    if (rage == 0)
    {
        prj = instance_create(x, (y - 38), oHordeBreederSpitS)
        prj.hspeed = ((3 + random(5)) * facing)
        prj.vspeed = (-2 - random(3))
        alarm[0] = 5
    }
    else
    {
        prj = instance_create(x, (y - 38), oHordeBreederSpitS)
        prj.hspeed = ((3 + random(5)) * facing)
        prj.vspeed = (-2 - random(3))
        prj.kind = 1
        alarm[0] = 10
    }
    sfx_play(sndArachnusHit)
    if (xtreme == 1)
        alarm[0] *= 0.5
}
