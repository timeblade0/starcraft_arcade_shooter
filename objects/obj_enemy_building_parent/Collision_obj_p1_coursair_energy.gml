//create explosion
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_small);

//no damage sound
audio_play_sound(snd_ping,1,0)

//destroy player shot
instance_destroy(other);
