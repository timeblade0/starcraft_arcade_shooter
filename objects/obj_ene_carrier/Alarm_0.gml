/// @desc create intercepters
if(scp_object_in_view()==1 && intercepters<10){
    AA=instance_create_depth(x,y,-1,obj_ene_intercepter); //make intercepter
    AA.owner=id; //set owner
	intercepters+=1;
}

//cooldown for next intercepter launch
alarm[0]=40
