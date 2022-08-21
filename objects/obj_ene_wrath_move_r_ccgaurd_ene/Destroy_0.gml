/// @desc Death animation and sound
repeat( 50 ) instance_create_depth(x, y, -1, obj_debre);
action_sound(snd_death_wrath, 0);
global.money += money;
