action_set_relative(1);
action_create_object(obj_terran_explode_medium, 0, 0);
action_sound(snd_devourer_die, 0);
global.shield += -99;
instance_destroy();
action_set_relative(0);
