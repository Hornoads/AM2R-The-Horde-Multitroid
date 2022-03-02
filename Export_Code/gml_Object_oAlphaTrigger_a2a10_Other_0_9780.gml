if (!instance_exists(oItemBall2))
{
    met = instance_create(320, 144, oMAlpha)
    met.facing = facing
    met.myid = myid
    met.spriteset = 1
    met.sprite_index = sMAlpha2
    with (met)
    {
        set_monster_vars(myid)
        shell = instance_create(x, y, oMAlphaShell)
        shell.damage = damage
        shell.hpush = 5
        shell.vpush = -3
    }
    if (global.monstersalive == 0)
    {
        sfx_stop(sndMAlphaIntro)
        sfx_play(sndMAlphaIntro)
        mus_alpha_monster()
    }
    global.monstersalive += 1
    global.event[111] = 1
    instance_destroy()
}
