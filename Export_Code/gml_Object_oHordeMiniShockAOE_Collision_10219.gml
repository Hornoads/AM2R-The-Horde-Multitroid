if (!instance_exists(oEMPNoise))
    instance_create(oCharacter.x, (oCharacter.y - 16), oEMPNoise)
else
{
    with (oEMPNoise)
        image_alpha = (1 - (0.5 * global.sensitivitymode))
}
