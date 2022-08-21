/// @desc Death animation and sound
repeat( 100 ) instance_create_depth(x, y, -1, obj_chunk_blood);
action_sound(snd_death_muta, 0);

instance_destroy(obj_ene_all_parent);