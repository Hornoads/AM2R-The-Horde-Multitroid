timer += 1
if instance_exists(oTester)
    state = oTester.state
if (state != 0 && state != 100)
    image_index = state
else
    image_index = 0
if instance_exists(oTesterGlass)
    glass = oTesterGlass.enabled
if (global.event[200] > 1)
{
    state = 100
    glass = 0
}
if (timer < tim)
{
    if (mainalph >= 0.8 && mainalph <= 1)
        mainalph += choose(-0.1, -0.05, -0.01, 0, 0.01, 0.05, -0.1)
    if (mainalph < 0.8)
        mainalph = 0.8
    if (mainalph > 1)
        mainalph = 1
}
if (timer > tim)
{
    lastalph = mainalph
    mainalph = 0
}
if (timer > (tim + 1))
{
    timer = -1
    mainalph = lastalph
    tim = random(600)
}
