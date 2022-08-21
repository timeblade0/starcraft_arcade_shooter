/// @desc die from hp=0
if(hp<1){
	instance_destroy(obj_ene_shot_weak_parent);
	instance_destroy(obj_ene_shot_strong_parent);
	instance_destroy(obj_ene_all_parent);
	instance_destroy(obj_asteroid);
	global.money += 1000;
	global.shield = 100;

	//delay before level complete message
	audio_stop_all();
	obj_control.alarm[11]=120	

	//destroy boss
	instance_destroy();
}
