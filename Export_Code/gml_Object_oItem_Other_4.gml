if global.item[itemid]
{
    myposx = floor((x / 320))
    myposy = floor(((y - 8) / 240))
    mapposx = (myposx + global.mapoffsetx)
    mapposy = (myposy + global.mapoffsety)
    if (global.mapoffsetx == 21 && global.mapoffsety == 15)
    {
        mapposx = 21
        mapposy = 15
    }
    if (global.mapoffsetx == 68 && global.mapoffsety == 9)
    {
        mapposx = 69
        mapposy = 9
    }
    if (global.mapoffsetx == 59 && global.mapoffsety == 16)
    {
        mapposx = 60
        mapposy = 16
    }
    if (global.mapoffsetx == 30 && global.mapoffsety == 17)
    {
        mapposx = 30
        mapposy = 17
    }
    if (distance_to_object(oItem) > 180)
        global.dmap[mapposx, mapposy] = 2
    instance_destroy()
}
