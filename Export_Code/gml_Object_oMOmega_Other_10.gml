myhealth -= dmg
flashing = flashtime
canbehit = 0
if (myhealth <= 0)
{
    state = 100
    statetime = 0
    alarm[10] = 1
    alarm[11] = 160
    event_user(2)
    if (myid != 52)
    {
        mus_fadeout(musOmegaFight)
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
    else if (myid == 52)
    {
        global.monstersleft -= 1
        global.monstersarea -= 1
        if (global.monstersarea < 1)
            global.monstersarea = 1
        if (global.monstersleft < 1)
            global.monstersleft = 1
        global.metdead[52] = 1
        with (oMonsterDoorControl)
            alarm[1] = 1
        if (global.monstersleft != 1)
            global.monstersleft = 1
        if (global.monstersarea != 1)
            global.monstersarea = 1
        instance_create(0, 0, oBigQuakeQueen)
    }
}
if (myhealth > 0)
{
    if (dmg < 100)
    {
        PlaySoundMono(sndMOmegaHit)
        roaring = 30
    }
    else
    {
        PlaySoundMono(sndMOmegaHit2)
        roaring = 160
    }
}
