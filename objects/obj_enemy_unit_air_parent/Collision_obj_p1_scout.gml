//crash into player
global.shield-=50;
instance_create_depth(x, y, -1, obj_explode_protoss_medium);
instance_destroy();
