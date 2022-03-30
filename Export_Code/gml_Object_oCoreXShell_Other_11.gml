global.event[ge] = 4
if (room == rm_a2a04)
{
    with (oDoor)
        event_user(3)
    mus_fadeout(musArachnus)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a8a11)
{
    with (oDoor)
        event_user(3)
    mus_fadeout(musGenesis)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    with (oA8RedLightFX)
        fadeout = 1
}
if (room == rm_a3a01)
{
    with (oCoreX)
        alarm[4] = 90
    with (oTorizoSpikes)
        event_user(0)
    with (oDoor)
        event_user(3)
    mus_fadeout(musTorizoB)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a5h01)
{
    with (151952)
        instance_destroy()
    with (151953)
        instance_destroy()
    with (oHordeWall)
    {
        state = 2
        image_speed = 0.2
    }
    mus_fadeout(musHordeBossB)
    mus_fadeout(musGenesis)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a5b03a)
{
    with (oDoorA5)
        event_user(3)
    mus_fadeout(musEris)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a5c07)
{
    mus_fadeout(musHordeBossC)
    mus_fadeout(musTorizoB)
    oMusicV2.bossbgm = 0
    if (global.event[250] == 0)
    {
        global.event[250] = 1
        instance_create(x, y, oA5BotSpawnCutscene)
        update_log(28)
        with (oA5ActivationBG)
            i = 0
    }
    with (oCrystalSolidX)
        image_speed = 0.1
    mus_current_fadein()
    mus_change(musArea5B)
}
