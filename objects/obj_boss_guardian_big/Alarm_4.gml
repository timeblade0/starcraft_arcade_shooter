///@desc create enemies at top of screen
instance_create_depth(random(view_width()), view_top()-random(30), 98, obj_ene_muta_d);
instance_create_depth(random(view_width()), view_top()-random(30), 98, obj_ene_guardian);
instance_create_depth(random(view_width()), view_top()-random(30), 98, obj_ene_devourer);

//spawn cooldown
alarm[4]=120;
