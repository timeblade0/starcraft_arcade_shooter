//death debre
event_inherited();
audio_play_sound(snd_death_building_terran,1,0);
instance_create_depth(x,y,-1,obj_explode_terran_building)
repeat(50) instance_create_depth(x,y,-1,obj_debre)