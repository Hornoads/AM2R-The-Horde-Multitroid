if (!instance_exists(oAutoHordeX))
{
    instance_create(480, 128, oAutoHordeX)
    instance_create(x, y, oAutoHordeXCamera)
    PlaySoundMono(sndQueenBigFire)
    if file_exists("musHordeBossC.ogg")
        mus_play(musHordeBossC)
    else
        mus_play(musTorizoB)
}
instance_destroy()
