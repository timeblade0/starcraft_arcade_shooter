/// @desc Death animation and sounds
instance_create_depth(x, y, -1, obj_ene_templar_death);
action_sound(snd_death_templar, 0);
global.money += 25;