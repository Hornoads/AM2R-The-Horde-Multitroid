if (instance_exists(leg1) && instance_exists(leg2))
{
    leg1.image_angle = clawangle
    leg2.image_angle = (-clawangle)
    leg1.x = ((round(x) - 9) + leg_offset)
    leg1.y = round(y)
    leg2.x = ((round(x) + 11) - leg_offset)
    leg2.y = round(y)
    if (frozen == 0)
    {
        leg1.sprite_index = sAutHordeClaw
        leg2.sprite_index = sAutHordeClaw
        leg1.canhit = 1
        leg2.canhit = 1
    }
    else
    {
        leg1.sprite_index = sAutHordeClawFrozen
        leg2.sprite_index = sAutHordeClawFrozen
        leg1.canhit = 0
        leg2.canhit = 0
    }
}
if instance_exists(oA3Beam)
{
    oA3Beam.x = x
    oA3Beam.y = (y + 12)
}
