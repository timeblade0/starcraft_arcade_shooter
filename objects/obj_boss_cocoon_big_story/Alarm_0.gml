//hatch into guardian boss
repeat( 100 )instance_create_depth(x, y, -1, obj_chunk_blood);
instance_create_depth(x, y, -1, obj_boss_guardian_big);
instance_destroy();
