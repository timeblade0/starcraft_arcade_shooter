/// @desc Death animation and sound
instance_create_depth(x, y, -1, obj_explode_terran_medium);
repeat(50) instance_create_depth(x, y, -1, obj_debre)
global.money += 20;
action_sound(snd_death_building_terran, 0);