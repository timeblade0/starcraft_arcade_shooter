//money for destruction
event_inherited()

//destroy building sound
repeat(50) instance_create_depth(x,y,-1,obj_debre)
instance_create_depth(x,y,98,obj_explode_protoss_medium)
audio_play_sound(snd_death_building_terran,1,0);