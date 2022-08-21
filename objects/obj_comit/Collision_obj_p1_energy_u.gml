//take damage
hp-=-1;

//explosion on player shot
action_create_object(obj_protoss_explode_small, other.x, other.y);

//change brown asteroid chunks to red for fire theme
AA=instance_create_depth(x,y,-1,obj_asteroid_chunk)
AA.sprite_index=spr_blood_chunk;

//destroy player shot
instance_destroy(other);
