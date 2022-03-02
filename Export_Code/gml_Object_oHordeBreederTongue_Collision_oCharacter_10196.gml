if (state >= 2)
{
    if (GRAB == 0 && hurt == 0)
        GRAB = 1
    if (GRAB == 1)
    {
        if (other.state == 27 || other.state == 30 || other.state == 31 || other.state == 29 || other.speedboost > 0 || (other.state == 15 && other.vjump == 0 && global.screwattack == 1))
            hurt = 1
        else
        {
            switch global.currentsuit
            {
                case 0:
                    global.playerhealth -= (0.5 * oControl.mod_diffmult)
                    GRABfx = 1
                    break
                case 1:
                    global.playerhealth -= (0.25 * oControl.mod_diffmult)
                    GRABfx = 1
                    break
                case 2:
                    damage_player(damage, hpush, vpush, 1, 10)
                    hurt = 1
                    break
            }

            with (oCharacter)
            {
                if (global.playerhealth <= 0 && state != DEFEATED)
                {
                    alarm[0] = 6
                    state = DEFEATED
                }
            }
        }
    }
}
