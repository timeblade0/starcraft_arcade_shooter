/// @desc Death animation and sound
if(scp_object_in_view()==1){
	instance_create_depth(x,y,98,obj_ene_muta_death);
	action_sound(snd_death_muta, 0); 
	global.money+=money;
}
