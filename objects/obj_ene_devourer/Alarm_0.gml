/// @desc shot - Tri Acid
AA = instance_create(x,y,obj_ene_shot_down_weak)
	AA.sprite_index = spr_acid_purple
	AA.direction = 270
	AA.image_angle=AA.direction
AA = instance_create(x,y,obj_ene_shot_down_weak)
	AA.sprite_index = spr_acid_purple
	AA.direction = 225
	AA.image_angle=AA.direction
AA = instance_create(x,y,obj_ene_shot_down_weak)
	AA.sprite_index = spr_acid_purple
	AA.direction = 315
	AA.image_angle=AA.direction

//shot cooldown
alarm[0]=150
