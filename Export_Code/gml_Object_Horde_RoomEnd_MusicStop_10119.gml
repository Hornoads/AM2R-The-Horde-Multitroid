if (global.ingame == 1 && unique != 0 && audio_is_playing(setmus))
{
    mus_stop(setmus)
    mus_current_fadein()
}
