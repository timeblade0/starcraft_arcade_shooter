//take damage
hp-=1;

//explosion on player shot
instance_create_depth(other.x, other.y, -1, obj_explode_protoss_small);

//debre
AA=instance_create_depth(x, y, -1, obj_chunk)
if(object_index==obj_comit)			{ AA.sprite_index=spr_chunk_red;	}
if(object_index==obj_asteroid)		{ AA.sprite_index=spr_chunk_brown;	}
if(object_index==obj_asteroid_metal){ AA.sprite_index=spr_chunk_gray;	}

//destroy player shot
instance_destroy(other);
