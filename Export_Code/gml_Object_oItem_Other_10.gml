global.item[itemid] = 1
global.itemstaken += 1
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
if (room == rm_a4b02b && itemid == 253)
    global.dmap[37, 58] = 2
if (distance_to_object(oItem) > 180)
    global.dmap[mapposx, mapposy] = 2
with (oControl)
    event_user(2)
if visible
{
    fade = instance_create(x, y, oFXTrail)
    fade.sprite_index = sprite_index
    fade.fadespeed = 0.1
}
global.itemtype = itemtype
display_itemmsg(text1, text2, btn1_name, btn2_name)
if (global.chozo_message_item_id == itemid)
    oControl.chozomessage++
instance_destroy()
