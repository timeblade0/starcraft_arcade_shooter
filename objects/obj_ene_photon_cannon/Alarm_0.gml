//shot if in pylon range
if(instance_exists(obj_ene_pylon)==1){
	//find nearest pylong
    pylon=instance_nearest(x,y,obj_ene_pylon);
    if(distance_to_point(pylon.x,pylon.y)<150){
	    image_index=0;
	    AA=instance_create_depth(x, y, -1, obj_ene_shot_semi_strong);	
			AA.sprite_index=spr_energyball
	}
    else{image_index=1;}
}
else{image_index=1;}

//shot cooldown
alarm[0]=100;
