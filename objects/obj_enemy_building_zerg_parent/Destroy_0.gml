//money for destruction
event_inherited()

//destroy building sound
audio_play_sound(snd_death_building_zerg,1,0);

//building debree
repeat(50){ instance_create_depth(x,y,-1,obj_chunk_blood); }