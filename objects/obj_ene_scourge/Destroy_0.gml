/// @desc Death animation and sound
if(scp_object_in_view()==1){
	instance_create_depth(x, y, -1, obj_ene_scourge_death);
	action_sound(snd_death_scourge, 0);
	global.money+=money;
}
