//crash into player
global.shield-=50;
action_create_object(obj_terran_explode_medium, x, y);
action_sound(snd_muta_die, 0);
instance_destroy();
