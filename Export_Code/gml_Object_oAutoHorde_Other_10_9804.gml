if (flashing == 0 && canflash)
{
    dmg = other.damage
    if (other.object_index == oPBombExpl)
    {
        dmg = (other.damage / 2)
        flashing += 7
    }
    if (other.object_index == oBombExpl)
        dmg = (other.damage * 2)
    if (global.difficulty == 2)
        dmg = ceil((dmg / 2))
    myhealth -= dmg
    stun = stuntime
    flashing += max(floor((dmg / 5)), 5)
    fxtimer = 0
    PlaySoundMono(hitsound)
    if (random(2) < 0.2)
        instance_create(x, y, oDebris)
}
if (myhealth <= 0 && state != 100)
{
    state = 100
    statetime = 0
    global.kills += 1
    dead = 1
}
