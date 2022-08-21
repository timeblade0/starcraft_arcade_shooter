/// @desc death
repeat( 50 )instance_create_depth(x, y, -1, obj_debre);
action_sound(snd_death_scv, 0);
global.money += 5;