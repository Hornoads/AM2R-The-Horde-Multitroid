if ((global.ingame == 1 && audio_is_playing(musHordeBossA)) || audio_is_playing(musAncientGuardian))
{
    mus_stop(musHordeBossA)
    mus_stop(musAncientGuardian)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
