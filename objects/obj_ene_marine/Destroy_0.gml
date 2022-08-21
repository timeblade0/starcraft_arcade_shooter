/// @desc death
if(scp_object_in_view()==1){
	instance_create_depth(x, y, -1, obj_ene_marine_death);
	action_sound(snd_death_marine, 0);
	global.money += 10;
}
