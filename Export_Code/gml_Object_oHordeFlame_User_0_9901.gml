if (((other.object_index == oMissile || other.object_index == oMissileExpl) && global.icemissiles && (!other.smissile)) || ibea == 1)
{
    dmg = (other.damage * 2)
    ibea = 0
}
else if (other.object_index == oMZetaProj)
    dmg = 50
else
    dmg = other.damage
if (global.difficulty == 2)
    dmg = ceil((dmg / 2))
if (justfrozen == 0)
    myhealth -= dmg
if (myhealth <= 0 && justfrozen == 0 && state != 100)
{
    state = 100
    statetime = -1
    canbehit = 0
    dead = 1
    global.kills += 1
}
stun = stuntime
if (other.ibeam && frozen == 0 && canfreeze && myhealth < freezehp)
    event_user(15)
if canflash
{
    flashing = 5
    fxtimer = 0
}
if frozen
{
    if (myhealth > 0)
        PlaySoundMono(sndFreezeHit)
}
else
    PlaySoundMono(hitsound)
