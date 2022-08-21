/// @desc damage player
instance_create_depth(other.x, other.y, -1, obj_explode_terran_small, );
instance_destroy();
global.shield-=2;