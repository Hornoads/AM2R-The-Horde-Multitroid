facing = 1
canfreeze = 1
timer = 25
myhealth = 150
unique = 112
setmus = 370
itemdrop = oControl.mod_varia
if (global.event[112] == 0)
{
    mus_current_stop()
    mus_play(musEnding)
}
if (global.event[112] == 1)
    instance_destroy()
