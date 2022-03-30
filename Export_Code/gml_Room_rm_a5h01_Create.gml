global.mapoffsetx = 44
global.mapoffsety = 44
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
mus_change(musCaveAmbience)
global.objdeactivate = 1
if (global.event[265] != 0 && global.item[scr_itemchange(oControl.mod_258)] == 0)
{
    if (oControl.mod_fusion == 1 && global.event[265] == 4)
    {
        inst = instance_create(((room_width / 5) * 4), ((room_height / 5) * 2), oCoreX)
        inst.alarm[1] = -1
        inst.state = 1
        inst.statetime = 0
    }
    else if (oControl.mod_fusion == 0)
        instance_create(784, 144, scr_itemsopen(oControl.mod_258))
}
