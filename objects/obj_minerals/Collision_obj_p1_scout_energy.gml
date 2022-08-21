//take damage
hp-=1;

//explosion on player shot
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_small);

//destroy player shot
instance_destroy(other);
