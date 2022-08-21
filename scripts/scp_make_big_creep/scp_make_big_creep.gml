function scp_make_big_creep() {
	//make creep for creep makers
	instance_create_depth(x,y,99,obj_creep_medium);
	instance_create_depth(x+40,y,99,obj_creep_medium);
	instance_create_depth(x-40,y,99,obj_creep_medium);
	instance_create_depth(x,y+40,99,obj_creep_medium);
	instance_create_depth(x,y-40,99,obj_creep_medium);
	instance_create_depth(x+40,y+40,99,obj_creep_medium);
	instance_create_depth(x-40,y-40,99,obj_creep_medium);
	instance_create_depth(x+40,y-40,99,obj_creep_medium);
	instance_create_depth(x-40,y+40,99,obj_creep_medium);
}
