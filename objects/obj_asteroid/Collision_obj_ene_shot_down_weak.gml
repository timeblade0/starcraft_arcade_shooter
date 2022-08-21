//NOTE: brown asteroids can be destroyed

//take damage
hp-=1;

//destroy shot
instance_destroy(other);

//create explosion
instance_create_depth(other.x, other.y, -1, obj_explode_terran_small);

//create debre
AA=instance_create_depth(x, y, -1, obj_chunk)
if(object_index==obj_comit){ AA.sprite_index=spr_chunk_red; }
if(object_index==obj_asteroid){ AA.sprite_index=spr_chunk_brown; }
if(object_index==obj_asteroid_metal){ AA.sprite_index=spr_chunk_gray; }
