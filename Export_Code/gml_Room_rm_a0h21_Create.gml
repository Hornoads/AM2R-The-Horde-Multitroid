global.mapoffsetx = 48
global.mapoffsety = 36
make_liquid(1, 656, 0, 0, 0, 0, 0)
global.floormaterial = 1
SoundFX_Preset(2)
SetAmb_Monsters()
if (global.event[180] == 0)
{
    PlaySoundMono(sndWaterDrop2)
    global.event[180] = 1
}
