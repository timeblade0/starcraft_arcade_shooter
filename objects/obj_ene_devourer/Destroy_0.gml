/// @desc Death animation and sound
if(scp_object_in_view()==1){
	instance_create_depth(x,y,98,obj_ene_devourer_death);
	action_sound(snd_death_devourer, 0); 
	global.money+=money;
}