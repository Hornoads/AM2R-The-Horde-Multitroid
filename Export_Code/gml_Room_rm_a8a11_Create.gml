global.mapoffsetx = 47
global.mapoffsety = 5
global.floormaterial = 4
global.waterlevel = 0
global.darkness = 3
if (oControl.mod_fusion == 1)
{
    if (global.event[307] == 4 && global.item[scr_itemchange(oControl.mod_50)] == 0)
    {
        inst = instance_create(((room_width / 5) * 4), (room_height / 2), oCoreX)
        inst.alarm[1] = -1
        inst.state = 1
        inst.statetime = 0
    }
}
else
    instance_create(888, 176, scr_itemsopen(oControl.mod_50))
