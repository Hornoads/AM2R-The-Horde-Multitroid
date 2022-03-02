if (state == 3 && statetime < 100)
{
    sprite_index = sHordeBreederAttack
    image_index = 1
    image_speed = 0
    hitbeam = 1
    hitmissile = 1
    hitpbomb = 1
    if (myhealth > 500)
    {
        prj = instance_create(x, (y - 38), oHordeBreederSpitM)
        prj.hspeed = (facing * (3 + random(5)))
        prj.vspeed = (-2 - random(3))
        prj.image_xscale = facing
        if (statetime <= 70)
            alarm[1] = 20
    }
    if (myhealth <= 500)
    {
        if (statetime <= 70)
        {
            prj = instance_create(x, (y - 38), oHordeBreederSpitM)
            prj.hspeed = (facing * (3 + random(5)))
            prj.vspeed = (-2 - random(3))
            prj.image_xscale = facing
            alarm[1] = 25
        }
        if (statetime > 70)
        {
            prj = instance_create(x, (y - 38), oHordeBreederSpitL)
            prj.hspeed = (facing * (3 + random(5)))
            prj.vspeed = (-2 - random(2))
            prj.image_xscale = facing
            if (rage == 1)
                prj.spawntype = irandom(2)
        }
    }
    sfx_play(sndArachnusHit)
    if (xtreme == 1)
        alarm[1] *= 0.8
}
