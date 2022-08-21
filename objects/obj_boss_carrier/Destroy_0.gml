/// @desc Death animation
instance_create_depth(x, y, 98, obj_explode_protoss_building);
repeat(50) instance_create_depth(x,y,-1,obj_debre)
action_sound(snd_death_shuttle, 0);