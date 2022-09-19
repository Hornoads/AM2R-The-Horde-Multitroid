var dmg, flashtime;
if (state < 90 && myhealth > 0)
{
    dmg = (10 + (5 * global.icemissiles))
    flashtime = 20
    if (isbeam == 1)
    {
        dmg = (15 - (7 * global.semiauto))
        flashtime = 35
        isbeam = 0
    }
    if (issmissile == 1)
    {
        dmg = 50
        flashtime = 60
    }
    myhealth -= dmg
    flashing = flashtime
    canbehit = 0
    hits_taken += 1
}
if (myhealth <= 0)
{
    if (myid != 52)
    {
        state = 100
        statetime = 0
        alarm[10] = 1
        alarm[11] = 160
        with (body_obj)
            instance_destroy()
        with (head_obj)
            instance_destroy()
        with (mask_obj)
            instance_destroy()
        mus_fadeout(musZetaFight)
        oMusicV2.bossbgm = 0
        global.metdead[myid] = 1
        global.monstersleft -= 1
        global.monstersarea -= 1
        check_areaclear()
        global.dmap[mapposx, mapposy] = 11
        with (oControl)
            event_user(2)
        dead = 1
    }
    else if (myid == 52 && state < 90)
    {
        if (global.event[331] < 4)
            global.event[331] = 4
        state = 90
        statetime = -1
        with (body_obj)
            instance_destroy()
        with (head_obj)
            instance_destroy()
        with (mask_obj)
            instance_destroy()
        dead = 1
        omet = instance_create(x, (y - 16), oMOmega)
        omet.myid = 52
        omet.limit_right = 512
        omet.limit_left = 112
        omet.state = 50
        omet.statetime = -1
        instance_destroy()
    }
}
if (myhealth > 0)
{
    PlaySoundMono(sndMZetaHit)
    roaring = 15
}
