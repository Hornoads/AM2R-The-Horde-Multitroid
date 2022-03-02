if (room == rm_a3a22)
    aut = instance_create(592, 80, oAutoadPlayer)
if (room == rm_a3a28)
{
    aut = instance_create(872, 548, oAutoadPlayer)
    instance_create(196, 128, oPincherFly28)
    instance_create(528, 112, oPincherFly28)
    instance_create(169, 384, oGravitt)
    instance_create(768, 80, oTPO28)
    instance_create(688, 208, oAutoad28)
}
if file_exists("musSkippy.ogg")
    mus_change(musSkippy)
else
    mus_change(musArea3A)
cam = instance_create(x, (y - 12), oAutoadCamera)
view_object[0] = cam
active = 0
