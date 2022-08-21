//move down
vspeed=global.vertspeed

//wait for merge until player is in view
if(scp_object_in_view()==1){
	if(once==0){
		once=1;
		alarm[0]=35;
	}
}
