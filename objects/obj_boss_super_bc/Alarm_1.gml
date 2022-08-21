/// @desc spawn other air units

AA=floor(random(2))
if(AA==0) instance_create_depth(random(room_width), view_top(), 98, obj_ene_wrath_d);
if(AA==1) instance_create_depth(random(room_width), view_top(), 98, obj_ene_valkery);


//one in 10 chance to spawn science vessle
if(instance_number(obj_ene_sci_vessle)<1){
	AA=floor(random(10))
	if(AA==0) instance_create_depth(random(room_width), view_top(), 98, obj_ene_sci_vessle);
}

//one in 10 chance to spawn science vessle
if(instance_number(obj_ene_battle_cruiser)<1){
	AA=floor(random(10))
	if(AA==0) instance_create_depth(random(room_width), view_top(), 98, obj_ene_battle_cruiser)
}

//spawn unit cooldown
alarm[1]=60