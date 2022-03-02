state = 1
statetime = 0
sfx_play(sndMZetaIntro)
roaring = 120
if (myid != 52 && room != rm_a7b08A)
{
    mus_zeta_monster()
    myposx = floor((x / 320))
    myposy = floor(((y - 8) / 240))
    mapposx = (myposx + global.mapoffsetx)
    mapposy = (myposy + global.mapoffsety)
    global.dmap[mapposx, mapposy] = 10
    with (oControl)
        event_user(2)
    cam = instance_create(x, y, oObjectCamera)
    cam.target_obj = id
}
else if (myid == 52)
{
    myhealth = 250
    damage = 40
}
with (oMalpha3TriggerProx)
    alarm[0] = 1
