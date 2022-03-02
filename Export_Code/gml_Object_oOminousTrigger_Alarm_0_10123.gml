if (trip == 4)
{
    PlaySoundMono(sndBoss1Stomp)
    quake = instance_create(0, 0, oQuake)
    quake.delay = 1
    quake.duration = 50
    quake.intensity = 15
    global.event[267] = 1
    global.enablecontrol = 1
    instance_destroy()
}
if (trip == 3)
{
    PlaySoundMono(sndAutoCroak)
    trip = 4
    alarm[0] = 30
}
if (trip == 2)
{
    sfx_stop(sndSBStartNotPlayer)
    PlaySoundMono(sndA4Expl)
    quake = instance_create(0, 0, oQuake)
    quake.delay = 0
    quake.duration = 20
    quake.intensity = 5
    PlaySoundMono(sndCrystalShatter)
    trip = 3
    alarm[0] = 30
}
if (trip == 1)
{
    trip = 2
    sfx_play(sndSBStartNotPlayer)
    alarm[0] = 75
}
