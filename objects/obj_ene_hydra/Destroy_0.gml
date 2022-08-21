/// @desc death
if(scp_object_in_view()==1){
	instance_create_depth(x, y, 99, obj_ene_hydra_death);
	action_sound(snd_death_hydra, 0);
	global.money+=money;
}