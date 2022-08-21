/// @desc random movement if in view
if(scp_object_in_view()==1){
	speed=3
	direction=random(359)
	onetime=1;
}

//random movement cooldown
alarm[0]=120
