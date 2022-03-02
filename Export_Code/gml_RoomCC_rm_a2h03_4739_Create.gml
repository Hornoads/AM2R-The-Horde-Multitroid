itemid = 5
itemidOriginal = itemid
itemid = oControl.mod_varia
if (oControl.mod_varia != itemidOriginal)
    src_items_rando(itemid)
scr_item_create_text()
if (global.event[112] == 0)
    instance_destroy()
