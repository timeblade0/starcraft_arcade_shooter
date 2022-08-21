//prevent from leaving screen
scp_border_walls(unit_speed);

#region gameover from zero lives
	if(lives<1){
		global.gameover=1
		global.pause=1
		obj_control.menu_selection=1	//can't unpause after gameover
		obj_control.screenshot=sprite_create_from_surface(application_surface,0,0,view_width(),view_height(),0,0,0,0);
		//stop scrolling stars on space levels
		if(room=room_04_zerg3 || room=room_04_zerg3_boss){
			layer_vspeed(29, 0)			//star layer1
			layer_vspeed(30, 0)			//star layer2
		}
		//control draw event will take it from here
	}
#endregion
#region out of sheilds - loose a life
	if (global.shield<1){
		action_sound(snd_death_scout, 0);
		instance_create_depth(x,y,-1,obj_explode_protoss_medium);
		lives-=1;
		global.shield=100;
	}
#endregion

#region fire shot, tailshot, and quadshot
	if(keyboard_check(ord("Z")) || gamepad_button_check(0, gp_face1)){
		#region fire normal shot
			if(shot==0){
				AA=instance_create_depth(x-7, y-5, -1, obj_p1_scout_energy)
					AA.direction=90;	AA.image_angle=AA.direction
				AA=instance_create_depth(x+7 ,y-5 , -1, obj_p1_scout_energy)
					AA.direction=90;	AA.image_angle=AA.direction
			}
		#endregion
		#region fire tailshot
			if(shot==0 && global.tailshot==1){
				AA=instance_create_depth(x-7, y-5, -1, obj_p1_scout_energy)
					AA.direction=270;	AA.image_angle=AA.direction
				AA=instance_create_depth(x+7, y-5, -1, obj_p1_scout_energy)
					AA.direction=270;	AA.image_angle=AA.direction
			}
		#endregion
		#region fire quadshot
			if(shot==0 && global.quadshot==1){
				AA=instance_create_depth(x-17, y, -1, obj_p1_scout_energy)
					AA.direction=90;	AA.image_angle=AA.direction
				AA=instance_create_depth(x+17, y, -1, obj_p1_scout_energy)
					AA.direction=90;	AA.image_angle=AA.direction
			}
		#endregion
		#region cooldown for all shots
			if(shot==0){
				shot=1
				alarm[0]=shot_cooldown
				sound_play(snd_laser)
			}
		#endregion
	}
#endregion
#region fire yamato cannon
	if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)){
		if(global.yamato==1){
				instance_create_depth(x, y-5, -1, obj_p1_yamato_u);
				action_sound(snd_laser, 0);
		}
	}
#endregion

#region bomb - not dragoon
	if(keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face3)){
		if (global.bombs>0){
			global.bombs-=1;
			action_sound(snd_laser, 0);
			instance_create_depth(x, y-100, -1, obj_ship_bomb_marker);
			instance_create_depth(x, y, -1, obj_ship_bomb_move);
		}
	}
#endregion

#region Movement Scout
	if(object_index==obj_p1_scout){
		//default sprite if no movement
		sprite_index = spr_scout_p1;
		
		//move left
		if(keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh)<-0.4){
			x-=unit_speed;		
			sprite_index=spr_scout_p1_bank_left;
		}

		//move right
		if(keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh)>0.4){
			x+=unit_speed		
			sprite_index=spr_scout_p1_bank_right
		}

		//move up
		if(keyboard_check(vk_up) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv)<-0.4){
			y-=unit_speed		
			sprite_index=spr_scout_p1_wings_down
		}

		//move down
		if(keyboard_check(vk_down) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv)>0.4){
			y+=unit_speed
		}
	}
#endregion
#region Movement Other Vehicles
	if(object_index!=obj_p1_scout){
		//move left
		if(keyboard_check(vk_left)==1){	x-=unit_speed; }

		//move right
		if(keyboard_check(vk_right)==1){ x+=unit_speed; }

		//move up
		if(keyboard_check(vk_up)==1){ y-=unit_speed; }

		//move down
		if(keyboard_check(vk_down)==1){ y+=unit_speed; }
	}
#endregion