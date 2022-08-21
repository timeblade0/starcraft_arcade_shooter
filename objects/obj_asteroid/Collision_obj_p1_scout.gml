//damage player and destroy self
instance_create_depth(x, y, -1, obj_explode_terran_medium);
action_sound(snd_death_building_terran, 0);
global.shield-=50;
instance_destroy();
