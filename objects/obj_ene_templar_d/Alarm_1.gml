/// @desc random movement in view
if(scp_object_in_view()==1){
	direction=random(360)
	speed=3
}

//random movement cooldown
alarm[1]=50;