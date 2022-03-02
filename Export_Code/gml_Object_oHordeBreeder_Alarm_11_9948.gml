repeat (16)
{
    expl = instance_create(((x - 16) + random(45)), (y - random(85)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
instance_create(x, y, oScreenFlash)
sfx_play(sndMissileExpl)
make_explosion4(x, y)
if (oControl.mod_fusion == 0)
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
    spawn_many_powerups((x - 40), (y - 64), 80, 64)
    mus_fadeout(musHordeBossB)
    mus_fadeout(musGenesis)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    instance_create(784, 144, scr_itemsopen(oControl.mod_258))
}
else
{
    core = instance_create(mean(bbox_left, bbox_right), mean(bbox_top, bbox_bottom), oCoreX)
    core.lastBossX = x
    core.lastBossY = y
    core.lastBossSprite = sprite_index
    core.lastBossFrame = image_index
    core.lastBossAngle = image_angle
    core.lastBossFacing = facing
    core.lastYscale = image_yscale
    core.lastBossDepth = depth
}
with (oCameraWallL)
    instance_destroy()
with (oCameraWallR)
    instance_destroy()
with (oCameraLimit)
    instance_destroy()
tile_delete(mBG0)
tile_delete(mBG1)
instance_destroy()
