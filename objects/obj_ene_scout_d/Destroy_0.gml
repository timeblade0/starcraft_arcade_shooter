/// @desc Death animation and sound
instance_create_depth(x, y, -1, obj_explode_protoss_medium);
action_sound(snd_death_scout, 0);
global.money+=money;