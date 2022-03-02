var fro, spwnx, spwny;
if (room == rm_a7b08A)
{
    repeat (3)
    {
        spwnx = ((view_xview[0] - (oControl.widescreen_space / 2)) + irandom((320 + (oControl.widescreen_space / 2))))
        spwny = view_yview[0]
        if (!(collision_line(spwnx, oCharacter.y, spwnx, (spwny - 16), oSolid, false, true)))
        {
            fro = instance_create(spwnx, spwny, oHornoad)
            fro.timer = random(70)
            fro.colorset = make_colour_hsv(irandom(255), irandom(255), 255)
        }
    }
}
instance_destroy()
