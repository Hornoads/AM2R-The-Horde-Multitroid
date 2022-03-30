if (act == 0)
{
    act = 1
    bosbat = instance_create(480, 176, oBattery)
    bosbat.canbehit = 0
    bosbat.state = 20
    PlaySoundMono(sndRobotExpl)
    repeat (15)
        instance_create(480, 176, oDebris)
    instance_create(40, 328, oCrystalSolidX)
    instance_create(40, 344, oCrystalSolidX)
    instance_create(40, 360, oCrystalSolidX)
    instance_create(40, 376, oCrystalSolidX)
    instance_create(920, 88, oCrystalSolidX)
    instance_create(920, 104, oCrystalSolidX)
    instance_create(920, 120, oCrystalSolidX)
    instance_create(920, 136, oCrystalSolidX)
    alarm[0] = 55
}
