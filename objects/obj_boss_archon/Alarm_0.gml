/// @desc shot strong
//shoot less energy when hp is more than half
repeat(50) {
	AA=instance_create_depth(x, y, -1, obj_ene_shot_down_strong);
	AA.sprite_index=spr_energyball
	AA.direction=random(360);
	AA.speed=6;
}

//create one semi homing energy shot
AA=instance_create_depth(x, y, -1, obj_ene_shot_semi_strong);	
AA.sprite_index=spr_energyball
//AA.direction=random(360);
AA.speed=6;

//shot strong cooldown
alarm[0]=80;