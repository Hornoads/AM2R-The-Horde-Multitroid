if (state == 1)
{
    speed = 0
    state = 2
    damage_player_knockdown(0, -1, 0, 1, 3)
    instance_create(848, 32, oHordeWall)
    instance_create(848, 48, oHordeWall)
    instance_create(848, 64, oHordeWall)
    instance_create(848, 80, oHordeWall)
    instance_create(848, 96, oHordeWall)
    instance_create(848, 112, oHordeWall)
    instance_create(848, 128, oHordeWall)
    statetime = 0
    mus_current_fadeout()
}
