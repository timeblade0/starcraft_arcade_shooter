action_create_object(obj_terran_explode_small, 0, 0);
instance_destroy();
global.shield += -20;
action_sound(snd_explode, 0);
action_set_relative(0);
