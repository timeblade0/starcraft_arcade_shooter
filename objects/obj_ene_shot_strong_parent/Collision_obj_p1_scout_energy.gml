//take damage from weak energy shots
hp-=1
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_small);
instance_destroy(other);