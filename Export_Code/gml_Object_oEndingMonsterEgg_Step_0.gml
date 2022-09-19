if (sprite_index == sDoomVorse && image_index == 9)
    PlaySoundMono(sndEggCrush)
if (sprite_index == sDoomVorse && image_index == 12)
    PlaySoundMono(sndHornoadLand)
if (sprite_index == sDoomVorse && image_index >= 23)
{
    sprite_index = sDoomVorse
    image_index = 0
    image_speed = 0.117
}
if (xBite == 1)
{
    sprite_index = sDoomVorse
    image_speed = 0.1
    image_index = 0
    xBite = 0
}
if (sprite_index == sMonsterEggBite && image_index >= 5)
{
    sprite_index = sDoomVorse
    image_index = 0
    image_speed = 0.117
}
if (xTwitch == 1)
{
    sprite_index = sDoomVorse
    image_speed = 0.117
    image_index = 0
    xTwitch = 0
}
if (sprite_index == sMonsterEggTwitch && image_index >= 8)
{
    sprite_index = sDoomVorse
    image_index = 0
    image_speed = 0.117
}
