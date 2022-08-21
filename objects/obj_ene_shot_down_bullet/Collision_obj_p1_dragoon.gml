/// @desc damage player
instance_create_depth(other.x, other.y, -1, obj_explode_terran_small);
audio_play_sound(snd_ping,1,0)
global.shield-=1;
instance_destroy();
