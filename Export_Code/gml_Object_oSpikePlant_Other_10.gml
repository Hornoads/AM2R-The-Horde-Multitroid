expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sExpl1
plantrand = irandom(100)
if (plantrand > 40 || state == 100)
{
    PlaySoundMono(sndProjHit1)
    if (oControl.mod_insanitymode == 0 || (global.difficulty < 2 && oControl.mod_insanitymode == 1))
        spawn_rnd_pickup(100)
}
else
{
    PlaySoundMono(sndMEggBreak)
    instance_create(x, y, oHordeMini)
}
instance_destroy()
