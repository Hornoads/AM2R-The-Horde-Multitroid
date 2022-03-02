global.mapoffsetx = 58
global.mapoffsety = 37
make_liquid(1, 672, 0, 0, 0, 0, 0)
global.floormaterial = 1
SoundFX_Preset(1)
SetAmb_Monsters()
if (global.event[178] == 0)
{
    PlaySoundMono(sndQueenDistant)
    global.event[178] = 1
}
