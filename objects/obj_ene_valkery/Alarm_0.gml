///@desc shot homing
AA=instance_create_depth(x, y, -1, obj_ene_shot_homing_weak)
AA.sprite_index=spr_missle

//shot cooldown
alarm[0]=200