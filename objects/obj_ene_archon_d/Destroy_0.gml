/// @desc death
instance_create_depth(x, y, -1, obj_ene_archon_death);
action_sound(snd_death_templar, 0);
global.money += 100;