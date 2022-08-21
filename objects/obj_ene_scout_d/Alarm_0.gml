/// @desc Shot
AA=instance_create_depth(x-5, y, -1, obj_ene_shot_down_weak);
	AA.sprite_index=spr_energy;
AA=instance_create_depth(x+5, y, -1, obj_ene_shot_down_weak);
	AA.sprite_index=spr_energy;
alarm[0]=50;
