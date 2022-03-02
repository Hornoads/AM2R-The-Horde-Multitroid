var expl, spwn;
expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.4
expl.additive = 0
expl.depth = -1
expl.sprite_index = sHornoadProj
if (kind == 0 && instance_number(oHordeMini) <= 24)
    spwn = instance_create(x, y, oHordeMini)
if (kind == 1 && instance_number(oHornoad) <= 16)
{
    spwn = instance_create(x, y, oHornoad)
    spwn.myhealth = 5
    spwn.timer = random(80)
}
