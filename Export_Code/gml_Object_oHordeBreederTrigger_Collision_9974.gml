instance_create(400, 16, oSolid)
with (oHordeBreeder)
{
    state = 1
    statetime = 0
}
with (oDoor)
    event_user(0)
mus_current_fadeout()
mus_play(musGenesis)
instance_destroy()
