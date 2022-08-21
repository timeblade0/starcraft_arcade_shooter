//take damage
hp-=1;

//explosion on player shot
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_small);

//debre
AA=instance_create_depth(x, y, -1, obj_asteroid_chunk)
if(object_index==obj_fireball_ene){ AA.sprite_index=spr_blood_chunk; }	//red for fireballs

//destroy player shot
instance_destroy(other);
