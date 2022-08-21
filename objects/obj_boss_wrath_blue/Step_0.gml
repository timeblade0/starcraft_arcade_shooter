/// @desc die from hp=0
if(hp<1){
	global.money += 1000;
	global.shield = 100;

	//destroy boss
	instance_destroy();
}