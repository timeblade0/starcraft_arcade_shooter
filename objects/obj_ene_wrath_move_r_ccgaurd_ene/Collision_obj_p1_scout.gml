action_set_relative(1);
action_create_object(obj_explode_terran_medium, 0, 0);
action_sound(snd_wrath_die, 0);
instance_destroy();
global.shield += -99;
action_set_relative(0);
