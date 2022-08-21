/// @desc death animation
instance_create_depth(x, y, -1, obj_explode_protoss_medium);
action_sound(snd_death_building_terran, 0);
global.money+=money;

//destroy all slave intercepters
global.owner=id
with(obj_ene_intercepter){
	if(owner==global.owner){ instance_destroy(); }
}