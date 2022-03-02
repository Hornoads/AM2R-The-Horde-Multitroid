if (state == 0)
{
    if (statetime == 0)
    {
        speed = 3
        direction = 90
    }
    if (y < (view_yview[0] - 32))
    {
        trip = instance_create(448, 408, oAutoHordeXTrigger)
        trip.image_xscale = 4
        instance_destroy()
    }
}
