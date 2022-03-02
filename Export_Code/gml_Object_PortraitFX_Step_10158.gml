if (time < t1)
    image_alpha = random(0.03)
if (time >= t1)
{
    image_alpha = random(1)
    time = 0
    t1 = random(900)
}
time += 1
