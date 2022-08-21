/// @desc shot laser

AA=instance_create_depth(x, y, -1, obj_ene_shot_down_strong)
AA.sprite_index=spr_laser

//shot cooldown
alarm[0]=shot_cooldown;
