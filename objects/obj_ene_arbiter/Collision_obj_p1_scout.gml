instance_create_depth(x, y, -1, obj_explode_terran_medium);
action_sound(snd_shuttle_die, 0);
global.shield += -75;
instance_destroy();
