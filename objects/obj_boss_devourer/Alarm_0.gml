/// @desc shot
AA=instance_create_depth(x,y,-1,obj_ene_shot_semi_strong);
AA.sprite_index=spr_acid_purple;
AA.image_xscale=1.5;
AA.image_yscale=1.5;

//shot cooldown
alarm[0]=50;