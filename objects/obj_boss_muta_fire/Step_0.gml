//both of these bosses must be defeated for the fight to complete

//die from hp=0
if(hp<1){
	instance_destroy(obj_ene_shot_weak_parent);
	instance_destroy(obj_ene_shot_strong_parent);
	global.money += 1000;
	global.shield = 100;

	//destroy one of 2 bosses
	if(instance_number(obj_boss_muta_fire)==1){
		//delay before level complete message
		audio_stop_all();
		obj_control.alarm[11]=120	
	}

	//destroy this boss
	instance_destroy();
}
