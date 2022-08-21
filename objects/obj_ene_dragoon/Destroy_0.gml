/// @desc Death animation and sound
instance_create_depth(x, y, 99, obj_ene_dragoon_death);
action_sound(snd_death_dragoon, 0);
global.money += 50;