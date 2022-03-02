sfx_play(sndTesterBarrierUp)
disabled = 0
clawr.disabled = 0
clawl.disabled = 0
fang.disabled = 0
with (disolid1)
    instance_destroy()
with (disolid2)
    instance_destroy()
with (disolid3)
    instance_destroy()
with (disolid4)
    instance_destroy()
armor = (200 + armplus)
with (oAutoHordeXBrain)
{
    state = 0
    statetime = 0
}
event_user(1)
dsolid = 0
