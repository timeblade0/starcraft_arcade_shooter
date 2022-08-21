//destroy templar
instance_destroy(other);
instance_destroy();

//create archon
if(id>other.id){ instance_create_depth(x, y, -1, obj_archon_born); }


