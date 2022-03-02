if (object_index != oBlobThrowerWater)
{
    with (other.id)
    {
        if (state != 100)
            myhealth -= 100
        if (myhealth <= 0 && justfrozen == 0 && state != 100)
        {
            if (object_index == oHornoad)
                pbea = 0
            state = 100
            statetime = -1
        }
    }
}
