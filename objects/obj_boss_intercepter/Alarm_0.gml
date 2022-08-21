/// @desc shot
AA=instance_create_depth(x,y,-1,obj_ene_shot_down_weak);
	AA.sprite_index=spr_energy;
	AA.direction=point_direction(x,y,obj_p1_scout.x, obj_p1_scout.y)

//shot cooldown
alarm[0]=50;