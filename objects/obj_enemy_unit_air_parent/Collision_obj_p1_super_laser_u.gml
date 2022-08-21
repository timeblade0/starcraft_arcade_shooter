//create explosion
instance_create_depth(other.x,other.y,-1,obj_protoss_explode_small);

//destroy player shot
with(other) { instance_destroy(); }

//take damage
hp-=3;
