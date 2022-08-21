///@desc shot
if(scp_object_in_view()==1){
	AA=instance_create_depth(x, y, -1, obj_ene_shot_semi_weak)
	AA.sprite_index=spr_missle
}

//shot cooldown
alarm[0]=150;
