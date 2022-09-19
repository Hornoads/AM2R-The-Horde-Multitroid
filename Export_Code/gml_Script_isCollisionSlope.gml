calculateCollisionBounds()
if (collision_line(round(lb), round(((bb + argument0) - 1)), round(rb), round(((bb + argument0) - 1)), oSlope1, true, true) > 0)
    return 1;
if (collision_line(round(lb), round(((bb + argument0) - 1)), round(rb), round(((bb + argument0) - 1)), oSlope2, true, true) > 0)
    return 2;
else
    return 0;
