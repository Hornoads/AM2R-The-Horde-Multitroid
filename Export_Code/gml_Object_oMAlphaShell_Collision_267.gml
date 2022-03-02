if ((!instance_exists(oMAlpha)) && (!instance_exists(oMGamma)) && room == rm_a7b08A)
{
    instance_destroy()
    exit
}
if (other.invincible == 0)
    damagedealt += damage
damage_player(damage, hpush, vpush, 0, 0)
hitting = 1
