//create blood
instance_create_depth(x,y,-1,obj_chunk_blood);

//no damage sound
audio_play_sound(snd_ping,1,0)

//destroy player shot
instance_destroy(other);
