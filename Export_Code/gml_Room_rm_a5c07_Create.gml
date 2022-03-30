global.mapoffsetx = 57
global.mapoffsety = 43
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
global.objdeactivate = 0
if (global.event[182] == 1)
{
    if ((oControl.mod_fusion == 1 && global.event[319] < 4) || (oControl.mod_fusion == 0 && global.event[319] == 0))
        mus_current_fadeout()
    tile_layer_delete(105)
    tile_layer_delete(-99)
    with (133735)
        instance_destroy()
    with (133750)
        instance_destroy()
    with (133751)
        instance_destroy()
    with (133752)
        instance_destroy()
    with (133753)
        instance_destroy()
    with (133754)
        instance_destroy()
    with (133755)
        instance_destroy()
}
if (global.event[182] == 0)
{
    tile_layer_delete(-98)
    tile_layer_delete(98)
    tile_layer_delete(-101)
}
