x = (oAutoHordeX.x + ((oCharacter.x - oAutoHordeX.x) / 2))
y = (oAutoHordeX.y + ((oCharacter.y - oAutoHordeX.y) / 2))
if (abs((oCharacter.x - oAutoHordeX.x)) < 280 && abs((oCharacter.y - oAutoHordeX.y)) < 180)
{
    oCamera.smootin = 15
    if (oCamera.focus == 0)
    {
        oCamera.focus = 1
        oCamera.focustime = 0
    }
    oCamera.focustime += 1
    oCamera.lockx = 1
    oCamera.locky = 1
    oCamera.targetx = x
    oCamera.targety = y
    oCamera.snapx = 0
    oCamera.snapy = 0
    oCamera.smoothout = 40
    oCamera.alarm[0] = 2
}
