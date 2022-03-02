global.mapoffsetx = 61
global.mapoffsety = 41
global.floormaterial = 4
mus_change(musItemAmb)
global.darkness = 0
if (global.event[182] >= 1 && global.event[310] >= 1 && global.event[311] >= 1 && global.event[312] >= 1 && global.event[313] >= 1 && global.event[314] >= 1 && global.event[315] >= 1 && global.event[316] >= 1 && global.event[317] >= 1 && global.event[318] >= 1 && global.event[319] >= 1 && global.event[320] >= 1 && global.event[321] >= 1 && global.event[322] >= 1 && global.event[323] >= 1 && global.event[324] >= 1 && global.event[325] >= 1 && global.event[326] >= 1 && global.event[327] >= 1 && global.event[328] >= 1 && global.event[329] >= 1)
{
    tile_layer_delete(101)
    tile_layer_delete(-101)
    global.dmap[63, 42] = 21
    with (oControl)
        event_user(2)
}
else
{
    tile_layer_delete(102)
    tile_layer_delete(-102)
}
