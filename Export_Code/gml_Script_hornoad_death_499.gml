canbehit = 0
PlaySoundMono(sndNewScream)
if instance_exists(platform)
{
    with (platform)
        instance_destroy()
}
xVel = 0
yVel = 0
global.kills += 1
sprite_index = sHornoadDeath
