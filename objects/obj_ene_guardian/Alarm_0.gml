/// @desc shot - acid strong semi
AA=instance_create_depth(x,y,-1,obj_ene_shot_semi_strong);
AA.sprite_index=spr_acid_green
AA.image_xscale=2;
AA.image_yscale=2;
AA.image_blend=c_green;		//darker green

//shot cooldown
alarm[0]=200;
