//create blood
instance_create_depth(x,y,-1,obj_blood_chunk);

//destroy player shot
instance_destroy(other);

//take damage
hp-=1;