function scp_remove_at_top() {
	//remove at top
	if(y<view_top()-sprite_height){
	    instance_destroy(self, 0)
	}
}
