action_set_relative(1);
action_create_object(obj_terran_explode_medium, 0, 0);
global.shield += -50;
action_sound(snd_scout_die, 0);
instance_destroy();
action_set_relative(0);
