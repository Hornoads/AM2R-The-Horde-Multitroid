var spwn, noad;
oCharacter.spwnoffset = spwnoffset
with (oCharacter)
{
    if collision_line(x, y, x, (y + 48), oSolid, false, true)
    {
        if (facing == LEFT)
        {
            if ((!(collision_line(x, (y - 40), (view_xview[0] - (oControl.widescreen_space / 2)), (y - 40), oSolid, false, true))) && (!(collision_line((view_xview[0] - (oControl.widescreen_space / 2)), (y - 40), (view_xview[0] - (oControl.widescreen_space / 2)), (y - 16), oSolid, false, true))) && (!(collision_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), (y - 128), x, (y + 128), oGotoRoom, 0, 1))))
            {
                spwn = instance_create((view_xview[0] - (oControl.widescreen_space / 2)), (y - irandom(24)), oHornoad)
                spwn.facing = 1
                spwn.state = 4
            }
        }
        else if (facing == RIGHT)
        {
            if ((!(collision_line(x, (y - 40), (view_xview[0] + spwnoffset), (y - 40), oSolid, false, true))) && (!(collision_line((view_xview[0] + spwnoffset), (y - 40), view_xview[spwnoffset], (y - 16), oSolid, false, true))) && (!(collision_rectangle(x, (y - 128), (view_xview[0] + spwnoffset), (y + 128), oGotoRoom, 0, 1))))
            {
                spwn = instance_create((view_xview[0] + spwnoffset), (y - irandom(24)), oHornoad)
                spwn.facing = -1
                spwn.state = 4
            }
        }
    }
}
if (instance_number(oHornoad) >= 16)
{
    noad = instance_furthest(oCharacter.x, oCharacter.y, oHornoad)
    with (noad)
        instance_destroy()
}
alarm[0] = (90 + random(310))
