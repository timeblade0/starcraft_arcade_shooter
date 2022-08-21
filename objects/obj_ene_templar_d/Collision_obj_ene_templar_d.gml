//merge into archon
if(id>other.id){
	instance_create_depth(x,y,98,obj_ene_archon_born)
	instance_destroy(other);
	instance_destroy(self);
}