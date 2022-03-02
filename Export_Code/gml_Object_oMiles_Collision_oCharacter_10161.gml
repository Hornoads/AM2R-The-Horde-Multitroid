if (global.semiauto == 0)
{
    if (global.mod_espresso_unlocked == 0)
    {
        global.mod_espresso_unlocked = 1
        save_stats2()
    }
    global.semiauto = 1
    global.icemissiles = 1
    global.itemtype = 0
    display_itemmsg("Iced Espresso", "Hyper-Chill Mode. Ice Wasps, Instant focus shots. Toggle in Extras", "", "")
}
