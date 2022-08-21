/// @desc Death animation and sound
repeat( 100 )instance_create_depth(x, y, -1, obj_chunk_blood);
audio_play_sound(snd_death_devourer,1,0);