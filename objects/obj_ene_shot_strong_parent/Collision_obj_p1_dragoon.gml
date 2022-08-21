//show explosion on player
instance_create_depth(other.x, other.y,-1,obj_explode_protoss_small);

//damage player
global.shield-=25;

//destroy this shot
instance_destroy();