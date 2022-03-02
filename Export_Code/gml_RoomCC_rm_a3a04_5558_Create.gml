link_tile(tlChozoTemple3, 16, 0)
regentime = 120
if (oControl.mod_randomgamebool == 1 && (global.item[7] == 0 || global.item[8] == 0))
{
    instance_destroy()
    regentime = -1
}
