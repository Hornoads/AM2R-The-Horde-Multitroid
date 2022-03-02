if (room == rm_a1h01)
{
    if (oBoss1Head.myhealth > 0 && x < oBoss1Head.edge_r)
        instance_create((x + 12), y, oBoss1FBExplR)
}
else if (!isCollisionRight(6))
    instance_create((x + 12), y, oBoss1FBExplR)
