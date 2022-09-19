if (yVel >= 0 && other.y > y && (other.object_index == oSlope1 || other.object_index == oSlope2 || other.object_index == oSlope1B || other.object_index == oSlope2B || other.object_index == oSlopeFL1 || other.object_index == oSlopeFL2 || other.object_index == oSlopeFL1B || other.object_index == oSlopeFL2B))
    yVel = (abs(yVel) * -1)
sfx_play(sndAutoCroak)
