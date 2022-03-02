if (state != 7 && state != 8 && state != 9)
    damage_player_knockdown(damage, -1, 30, 0, 5)
if (state == 9 && spit == 1)
{
    damage_player_knockdown(0, -1, 90, 0, 7)
    spit = 0
}
