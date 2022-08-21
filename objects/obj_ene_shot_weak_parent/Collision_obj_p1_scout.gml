/// @desc damage player
audio_play_sound(snd_ping,1,0)
instance_create_depth(x, y, -1, obj_explode_terran_small);
global.shield += -20;
instance_destroy();
