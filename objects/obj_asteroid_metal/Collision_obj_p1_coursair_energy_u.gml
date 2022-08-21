//NOTE: metal asteroids cannot be destroyed

//ping sound
action_sound(snd_ping, 0);

//destroy player shot
instance_destroy(other);

//create explosion and metal chunks
instance_create_depth(other.x, other.y, -1, obj_explode_terran_small);
instance_create_depth(other.x, other.y, -1, obj_asteroid_metal_chunk);
