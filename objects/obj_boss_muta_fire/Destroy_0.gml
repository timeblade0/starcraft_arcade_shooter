/// @desc Death animation and sound
AA=instance_create_depth(x, y, -1, obj_ene_muta_death);
AA.image_xscale=image_xscale
AA.image_yscale=image_yscale
action_sound(snd_death_muta, 0);