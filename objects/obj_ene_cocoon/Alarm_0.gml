/// @desc Hatch into random air unit
if(AA==0){ instance_create_depth(x,y,-1,obj_ene_muta_d);	}
if(AA==1){ instance_create_depth(x,y,-1,obj_ene_devourer);	}
if(AA==2){ instance_create_depth(x,y,-1,obj_ene_guardian);	}
if(AA==3){ instance_create_depth(x,y,-1,obj_ene_scourge);	}
instance_destroy();