/// @desc crash into player
instance_create_depth(x, y, -1, obj_explode_protoss_medium);
global.shield-=50;
instance_destroy();
