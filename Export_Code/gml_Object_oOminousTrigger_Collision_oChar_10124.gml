if (trip == 0)
{
    ahc = instance_create(178, 174, oAutoHorde)
    ahc.state = 10
    ahc.statetime = 0
    ahc.image_index = 0
    ahc.serialnumber = 319
    ecam = instance_create(x, (y - 16), oEventCamera)
    ecam.targetx = 160
    ecam.targety = 120
    ecam.ratio = 8
    view_object[0] = oEventCamera
    global.event[267] = 1
    instance_create(288, 112, oTesterMissileExpl)
    PlaySoundMono(sndSMissileExpl)
    with (133706)
        event_user(1)
    trip = 1
}
