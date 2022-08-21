///@desc stop moving and evolve into guardian
speed = 0;

//create boss cocoon
instance_create_depth(x, y, -1, obj_boss_cocoon_big_story);

//remove self
instance_destroy();
