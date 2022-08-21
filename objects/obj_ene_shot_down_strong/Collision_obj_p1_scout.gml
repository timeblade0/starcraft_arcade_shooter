//take damage
instance_create_depth(other.x,other.y,-1,obj_explode_protoss_medium);
global.shield -= 25;
instance_destroy();

