function scp_remove_out_of_view() {
	//remove out of view
	//run in step event of objects to be removed
	if(scp_object_in_view()==0){//remove if not in view
	    instance_destroy(self, 0);
	}
}
