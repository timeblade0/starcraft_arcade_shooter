//show explosion on player
action_create_object(obj_protoss_explode_small, other.x, other.y);

//damage player
global.shield-=25;

//destroy this shot
instance_destroy();