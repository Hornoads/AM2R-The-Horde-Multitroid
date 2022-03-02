if (room == rm_a1h01)
{
    if (oBoss1Head.myhealth > 0 && x > oBoss1Head.edge_l)
        instance_create((x - 12), y, oBoss1FBExplL)
}
else if (!isCollisionLeft(6))
    instance_create((x - 12), y, oBoss1FBExplL)
