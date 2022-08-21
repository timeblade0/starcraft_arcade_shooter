//show explosion on player
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_medium);
audio_play_sound(snd_ping,1,0)

//damage player
global.shield-=20;

//destroy this shot
instance_destroy();