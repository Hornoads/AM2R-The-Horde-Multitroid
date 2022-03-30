repeat (16)
{
    expl = instance_create(((x - 16) + random(32)), (y - random(80)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
instance_create(x, y, oScreenFlash)
sfx_play(sndEDeath3)
make_explosion4(x, y)
if (global.event[319] == 0)
{
    global.event[319] = 1
    global.event[330] += 1
}
if (global.event[330] >= 21)
    scan_log(46, get_text("ScanEvents", "UpdateLog"), 160, 1)
if (oControl.mod_fusion == 0)
{
    with (oDoorA5)
        event_user(3)
    spawn_many_powerups((x - 40), (y - 64), 80, 64)
    mus_fadeout(musHordeBossC)
    mus_fadeout(musTorizoB)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    if (global.event[250] == 0)
    {
        global.event[250] = 1
        instance_create(x, y, oA5BotSpawnCutscene)
        update_log(28)
        mus_change(musArea5B)
        with (oA5ActivationBG)
            i = 0
    }
    with (oCrystalSolidX)
        image_speed = 0.1
}
else
{
    core = instance_create(mean(bbox_left, bbox_right), mean(bbox_top, bbox_bottom), oCoreX)
    core.lastBossX = x
    core.lastBossY = y
    core.lastBossSprite = sprite_index
    core.lastBossFrame = image_index
    core.lastBossAngle = image_angle
    core.lastBossFacing = 1
    core.lastYscale = image_yscale
    core.lastBossDepth = depth
}
instance_destroy()
global.dmap[58, 44] = 15
with (oControl)
    event_user(2)
