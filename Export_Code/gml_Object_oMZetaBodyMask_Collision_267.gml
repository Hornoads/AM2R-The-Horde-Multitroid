var pushdir;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.invincible == 0)
    oMZeta.damagedealt += oMZeta.damage
if (oMZeta.state == 4 || oMZeta.state == 9)
    damage_player_knockdown(oMZeta.damage, pushdir, 160, 0, 4)
else
    damage_player_push(oMZeta.damage, pushdir, 90, 0, 3.5)
