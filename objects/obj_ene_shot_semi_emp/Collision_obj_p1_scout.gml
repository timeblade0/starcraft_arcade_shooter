//show explosion on player
instance_create_depth(other.x, other.y,-1,obj_explode_protoss_medium);
action_sound(snd_death_shuttle, 0);

//set shields to 1
global.shield=1;

//destroy this shot
instance_destroy();
