var wall;
if (state == 0)
{
    speed = 0
    direction = 0
    state = 1
}
if (state == 1)
{
    if (statetime < 5)
    {
        speed = random(1)
        direction = random(360)
    }
    if (statetime >= 5)
    {
        if (distance_to_point(originx, originy) != 0)
            move_towards_point(originx, originy, random(1))
        if (distance_to_point((originx + irandom_range(-8, 8)), (originy + irandom_range(-8, 8))) == 0)
            statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        with (151953)
            image_yscale = 5
        if oControl.widescreen
        {
            cam = instance_create(400, 224, oCameraLimit)
            cam.areax = 600
            cam.areay = -240
            cam.lockx = 632
            cam.locky = 0
            cam.smoothin = 15
            cam.smoothout = 15
        }
        else
        {
            camL = instance_create((416 + (oControl.widescreen_space / 2)), 224, oCameraWallL)
            camL.areax = 160
            camL.areay = -240
            camR = instance_create((688 - (oControl.widescreen_space / 2)), 224, oCameraWallR)
            camR.areax = 160
            camR.areay = -240
        }
    }
    if (statetime > 30 && x > 424)
        move_towards_point(424, 160, 7)
    else
        speed = 0
    if (x <= 424)
    {
        with (151952)
        {
            x = 416
            image_yscale = -12
        }
        speed = 0
        x = 424
        y = 160
        state = 3
        statetime = -1
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        speed = 7
        direction = 90
        wall = instance_create(424, 176, oHordeWall)
        wall.alarm[0] = 1
    }
    if (y <= 8)
    {
        speed = 0
        y = 8
        state = 4
        statetime = -1
    }
}
if (state == 4)
{
    if (distance_to_point(800, 112) > 0)
        move_towards_point(800, 112, 5)
    if (x >= 800)
    {
        speed = 0
        x = 800
        y = 112
        state = 5
        statetime = -1
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        flashing = 0
        PlaySoundMono(sndXMorph1)
    }
    if (statetime <= 40)
    {
        sizeX += 0.12
        sizeY += 0.08
    }
    if (statetime >= 40)
    {
        sizeX -= 0.12
        sizeY -= 0.08
    }
    if (statetime >= 81)
    {
        breeder = instance_create(816, 144, oHordeBreeder)
        breeder.facing = -1
        mus_play(bgm)
        instance_destroy()
    }
}
statetime += 1
if (fxtimer < 10)
    fxtimer += 1
else
    fxtimer = 0
