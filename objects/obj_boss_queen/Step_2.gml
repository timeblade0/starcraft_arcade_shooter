/// @desc move left and right

//turn around on right side
if(direction==0){
	if(x>xmax){
		x=xmax
		direction=180
		image_index=2
	}
}

//turn around on left side
if(direction==180){
	if(x<xmin){
		x=xmin
		direction=0
		image_index=0
	}
}