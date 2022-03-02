var expl;
expl = instance_create(x, y, oTesterMissileExpl)
expl.ah = ah
instance_destroy()
sfx_stop(sndProjHit2)
sfx_play(sndProjHit2)
