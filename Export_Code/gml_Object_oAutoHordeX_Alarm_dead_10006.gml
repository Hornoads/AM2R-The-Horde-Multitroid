repeat (32)
{
    expl = instance_create(((x - 32) + random(64)), (y - random(80)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
make_explosion3(x, y)
repeat (64)
    instance_create(x, (y - 10), oDebris)
instance_create(x, y, oScreenFlash)
sfx_play(sndRobotExpl)
sfx_play(sndTesterDeath)
instance_destroy()
