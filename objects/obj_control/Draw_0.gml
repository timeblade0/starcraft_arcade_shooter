
//functions
function scp_reset_supplies_if_gameover() {
	if(global.gameover==1){
		lives=global.level_start_lives
		global.shield=global.level_start_shield
		global.bombs=global.level_start_bombs
		global.money=global.level_start_money
		global.gameover=0
	}
}
function scp_draw_menu_button(position_from_top,text){
	//argument0 = position from top. starts at 0
	//argument1 = text on button
	
	draw_set_color(c_white);	
	draw_set_halign(fa_center);
	if(menu_selection==position_from_top) draw_set_color(c_yellow)		//yellow if button selected
	draw_roundrect(menu_left+10,menu_top+20+(position_from_top*50),menu_right-10,menu_top+50+(position_from_top*50),1)
	draw_text((menu_left+menu_right)/2,menu_top+27+(position_from_top*50),text)
}
function scp_draw_menu_blue_bkg(){
	//deactivate objects, take screenshot, and draw screenshot
	instance_deactivate_all(1)
	draw_set_alpha(1);				//not transparent
	draw_sprite_stretched(screenshot, -1, view_left(), view_top(), view_width(), view_height());  //screenshot of game while paused
			
	//define menu values
	menu_left=view_left()+(view_width()/2)-100
	menu_top=view_top()+(view_height()/2)-100
	menu_right=view_left()+(view_width()/2)+100
	menu_bottom=view_top()+(view_height()/2)+120
			
	//blue menu background
	draw_set_alpha(0.5);		//half transparent
	draw_set_color(c_blue);		draw_roundrect(menu_left,menu_top,menu_right,menu_bottom,0) //background
	draw_set_color(c_white);	draw_roundrect(menu_left,menu_top,menu_right,menu_bottom,1) //outline
	draw_set_alpha(1);			//not transparent
}

#region draw FPS		top right		DISABLED
	/*
	draw_set_color(c_white)
	draw_set_font(fnt_consolas_12)
	draw_rectangle(view_left()+view_width()-120,view_top(),view_left()+view_width(),view_top()+22,0)
	draw_set_color(c_black);
	draw_set_font(fnt_consolas_12)
	draw_text(view_left()+view_width()-115,view_top()+1,"FPS: "+string(fps)+"/"+string(room_speed))
	*/
#endregion

#region draw money		top left
draw_set_color(c_white)
draw_set_font(fnt_consolas_12)
draw_rectangle(view_left(), view_top(), view_left()+75, view_top()+22, 0);
draw_set_color(c_black);
draw_set_font(fnt_consolas_12)
draw_text(view_left()+2, view_top(), "$"+string(global.money));
#endregion
#region draw shields	bottom left
	draw_set_color(c_white);	
	draw_set_font(fnt_consolas_12)
	draw_sprite(spr_shield_icon, -1, view_left()+32, view_top()+view_height()-100);
	draw_text(view_left()+50, view_top()+view_height()-110, ""+string(global.shield)+"%");
#endregion
#region draw bombs		bottom left
	if(global.bombs<0){ global.bombs=0; }	//bombs can't go negative
	draw_set_color(c_white);	
	draw_set_font(fnt_consolas_12)
	draw_sprite(spr_atom, -1, view_left()+32, view_top()+view_height()-70);
	draw_text(view_left()+50, view_top()+view_height()-80, "X"+string(global.bombs));
#endregion
#region draw lives		bottom left
	draw_set_color(c_white);	
	draw_set_font(fnt_consolas_12)
	draw_sprite_ext(spr_scout_p1, -1, view_left()+32, view_top()+view_height()-40,0.5,0.5,0,c_white,1);
	draw_text(view_left()+52, view_top()+view_height()-50, "X"+string(lives));
#endregion

#region pause menu and mission accomplished message
if(room!=room_hangar){					//no pause in title or hangar
	//press enter to pause/unpase
	if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start)){	
		//press enter to unpause/restart level/go to hangar/exit game
		if(global.pause==1 && global.message==0) {
				//unpause selected
				if(menu_selection==0){
					instance_activate_all();
				
					//start scrolling stars on space levels
					if(room=room_04_zerg3 || room=room_04_zerg3_boss){
						layer_vspeed(29, 0.5)		//star layer1
						layer_vspeed(30, 1)			//star layer2
					}
				}
			
				//restart level selected
				if(menu_selection==1){ 
					instance_activate_all();
					menu_selection=0;		
				
					scp_reset_supplies_if_gameover()
					room_restart() 
				}
			
				//hangar selected
				if(menu_selection==2){ 
					instance_activate_all();
					menu_selection=0;		
				
					scp_reset_supplies_if_gameover()
					room_goto(room_hangar) 
				}
				
				//exit game selected
				if(menu_selection==3){ game_end(); }
		}
		
		//press enter to accept mission accomplised message
		if(global.pause==1 && global.message==1) {
			instance_activate_all();
			global.message=0
			global.pause=0
			menu_selection=0;	
			room_goto(room_hangar) 
		}
		
		//press enter to pause
		if(global.pause==0) {
			instance_deactivate_all(1)
			screenshot=sprite_create_from_surface(application_surface,0,0,view_width(),view_height(),0,0,0,0);
			
			//stop scrolling stars on space levels
			if(room=room_04_zerg3 || room=room_04_zerg3_boss){
				layer_vspeed(29, 0)			//star layer1
				layer_vspeed(30, 0)			//star layer2
			}
		}
		
		//toggle pause and unpause
		global.pause=abs(global.pause-1)					
	}
	
	//draw pause menu. not MISSION ACCOMPLISHED message
	if(global.pause==1 && global.message==0){
		//draw menu bkg
		scp_draw_menu_blue_bkg()
			
		//draw unpause/restart level/go to hangar/exit game buttons
		draw_set_font(fnt_consolas_15);
		if(global.gameover==0){	scp_draw_menu_button(0,"UNPAUSE") }		//can't unpause if gameover
		scp_draw_menu_button(1,"RESTART LEVEL")
		scp_draw_menu_button(2,"GO TO HANGAR")
		scp_draw_menu_button(3,"EXIT GAME")
		
		#region menu naviation for regular pause menu
			if(keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv)<-0.9)	menu_selection+=1
			if(keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)   || gamepad_axis_value(0, gp_axislv)>0.9)		menu_selection-=1
			if(menu_selection<0) menu_selection=3								//loop cursor
			if(menu_selection>3) menu_selection=0								//loop cursor
			if(global.gameover==1 && menu_selection==0)		menu_selection=1	//can't unpause after gameover
		#endregion
			
		//set font alignment back to default
		draw_set_halign(fa_left);	
	}
		
	//draw mission accomplished message  - not final level
	if(global.pause==1 && global.message==1 && room!=room_10_protoss2_boss){	
		//draw menu bkg			
		scp_draw_menu_blue_bkg()
			
		//draw mission accomplished menu buttons
		draw_set_font(fnt_consolas_15);
		scp_draw_menu_button(0,"MISSION")
		scp_draw_menu_button(1,"ACCOMPLISHED")
		menu_selection=2;		//this will highlight the next button yellow
		draw_set_font(fnt_consolas_15);
		scp_draw_menu_button(2,"GO TO HANGAR")
			
		//set font alignment back to default
		draw_set_halign(fa_left);		
	}
	
	//draw mission accomplished message  - final level
	if(global.pause==1 && global.message==1 && room==room_10_protoss2_boss){	
		//draw menu bkg			
		scp_draw_menu_blue_bkg()
			
		//draw mission accomplished menu buttons
		draw_set_font(fnt_consolas_15);
		scp_draw_menu_button(0,"GAME")
		scp_draw_menu_button(1,"COMPLETE!")
		menu_selection=2;		//this will highlight the next button yellow
		draw_set_font(fnt_consolas_15);
		scp_draw_menu_button(2,"NEWGAME+")
			
		//set font alignment back to default
		draw_set_halign(fa_left);		
		
		//start from level 1
		global.level=1
	}
}
#endregion

#region hangar menu controls
	if(room==room_hangar){
		#region move menu selector
			if(keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)   || gamepad_axis_value(0, gp_axislv)>0.9)			global.menuy-=1
			if(keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv)<-0.9)		global.menuy+=1
			if(keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)   || gamepad_axis_value(0, gp_axislh)<-0.9)		global.menux-=1
			if(keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr)   || gamepad_axis_value(0, gp_axislh)>0.9)		global.menux+=1
		#endregion
		#region loop menu selector
			if(global.menuy<0) global.menuy=2		//over top
			if(global.menuy>2) global.menuy=0		//over bottom
			if(global.menux<0 && global.menuy==0)	global.menux=4		//row 0	over left
			if(global.menux>4 && global.menuy==0)	global.menux=0		//row 0 over right
			if(global.menux<0 && global.menuy==1)	global.menux=1		//row 1 over left
			if(global.menux>1 && global.menuy==1)	global.menux=0		//row 1 over right
			if(global.menux<0 && global.menuy==2)	global.menux=1		//row 2 over left
			if(global.menux>1 && global.menuy==2)	global.menux=0		//row 2 over right
		#endregion
	}

#endregion