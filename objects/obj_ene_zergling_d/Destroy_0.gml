//death animation and sound
instance_create_depth(x, y, 98, obj_ene_zergling_death);
action_sound(snd_death_zergling, 0);
global.money+=money;