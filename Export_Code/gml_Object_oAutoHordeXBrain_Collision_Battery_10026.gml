var offset;
with (other.id)
{
    x = round(x)
    y = round(y)
    offset = (other.x - x)
    yVel = -3
    xVel = ((offset / 8) * -1)
}
