msl = instance_create(x, (y + 4), oAutoadMissile)
if (room == rm_a3a22)
{
    msl.hspeed = (((xVel * 0.25) + (oControl.kLeft * -1)) + (oControl.kRight * 1))
    msl.vspeed = min(-1.5, (yVel * 0.8))
    hasmissile = 0
}
if (room == rm_a3a28)
{
    mvel = ((oControl.kLeft * -1) + (oControl.kRight * 1))
    msl.hspeed = ((xVel * 0.25) + (((clamp(oControl.kMissilePushedSteps, 0, 20) / 2) + 3) * mvel))
    msl.vspeed = min(-2, (((yVel * 0.8) + ((clamp(oControl.kMissilePushedSteps, 0, (oControl.kUp * 20)) / 5) * -1)) + (oControl.kUp * -4)))
    hasmissile = 1
    miscd = 5
}
