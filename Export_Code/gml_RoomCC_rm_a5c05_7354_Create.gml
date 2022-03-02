tgtx[1] = (startx - 16)
tgty[1] = (starty + 32)
tgtx[2] = (startx + 16)
tgty[2] = (starty + 64)
tgtx[3] = (startx - 16)
tgty[3] = (starty + 64)
tgtx[4] = (startx + 16)
tgty[4] = (starty + 32)
tgtx[5] = startx
tgty[5] = starty
if (global.event[182] > 0 && global.event[319] == 0)
{
    if hitemp
    {
        emp = instance_create(x, y, oEnemyDisabled)
        emp.image_xscale = facing
        emp.sprite_index = empspr
        emp.image_index = image_index
        emp.mask_index = empspr
        if (platform_engine_active == 1)
        {
            emp.xVel = (xVel / 2)
            emp.yVel = (yVel / 2)
            emp.collisionBoundsOffsetLeftX = (collisionBoundsOffsetLeftX - 2)
            emp.collisionBoundsOffsetTopY = (collisionBoundsOffsetTopY - 2)
            emp.collisionBoundsOffsetRightX = (collisionBoundsOffsetRightX - 2)
            emp.collisionBoundsOffsetBottomY = (collisionBoundsOffsetBottomY - 2)
        }
        else
        {
            emp.xVel = (hspeed / 2)
            emp.yVel = (vspeed / 2)
        }
        emp.depth = 10
        instance_destroy()
    }
}
