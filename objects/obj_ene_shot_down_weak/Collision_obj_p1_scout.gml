action_set_relative(1);
action_create_object(obj_terran_explode_small, 0, 0);
instance_destroy();
global.shield += -25;
action_sound(snd_scout_die, 0);
action_set_relative(0);
