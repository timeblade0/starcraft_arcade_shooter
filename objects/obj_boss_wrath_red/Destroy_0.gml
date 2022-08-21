//death
instance_create_depth(x, y, -1, obj_explode_terran_medium);
repeat( 100 ) instance_create_depth(x, y, -1, obj_debre);
action_sound(snd_death_wrath, 0);

//win if both bosses defeated
if(instance_number(obj_boss_wrath_blue)==0){
		audio_stop_all();
		obj_control.alarm[11]=120		//delay before level complete message
}