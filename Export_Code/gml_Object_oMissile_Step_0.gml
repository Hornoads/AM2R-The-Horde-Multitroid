if instance_exists(oCharacter)
{
    if ((direction == 0 || direction == 45 || direction == 315) && oCharacter.xVel > 0)
        x += oCharacter.xVel
    if ((direction == 180 || direction == 135 || direction == 225) && oCharacter.xVel < 0)
        x += oCharacter.xVel
    if (direction == 270 && oCharacter.yVel > 0)
        y += oCharacter.yVel
}
if smissile
    speed += 0.5
if (y > global.waterlevel && global.waterlevel != 0)
{
    if (inwater == 0)
        instance_create(x, global.waterlevel, oSmallSplash)
    inwater = 1
}
else
{
    if (inwater == 1)
        instance_create(x, global.waterlevel, oSmallSplash)
    inwater = 0
}
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        if (x > (room_width + 200) || x < -200 || y > (room_height + 200) || y < -200)
        {
            instance_destroy()
            trail.speed = speed
            trail.alarm[0] = 30
            with (flame)
                instance_destroy()
        }
    }
    else if (x < ((view_xview[0] - 64) - (oControl.widescreen_space / 2)) || x > (((view_xview[0] + view_wview[0]) + 64) + (oControl.widescreen_space / 2)) || y < (view_yview[0] - 64) || y > ((view_yview[0] + view_hview[0]) + 64))
    {
        instance_destroy()
        trail.speed = speed
        trail.alarm[0] = 30
        with (flame)
            instance_destroy()
    }
}
else if (x < ((view_xview[0] - 160) - (oControl.widescreen_space / 2)) || x > (((view_xview[0] + view_wview[0]) + 160) + (oControl.widescreen_space / 2)) || y < (view_yview[0] - 160) || y > ((view_yview[0] + view_hview[0]) + 160))
{
    instance_destroy()
    trail.speed = speed
    trail.alarm[0] = 30
    with (flame)
        instance_destroy()
}
trail.x = x
trail.y = y
if instance_exists(flame)
{
    flame.x = x
    flame.y = y
}
