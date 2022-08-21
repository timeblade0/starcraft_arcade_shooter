/// @desc draw cost under button
draw_self()

//show selected
image_index=0;
if(global.menux==1 && global.menuy==0) image_index=1;

//draw cost
draw_set_halign(fa_center);
draw_set_font(fnt_consolas_20);
draw_set_color(c_white)
if(global.money<cost)	draw_set_color(c_red);
draw_text(x+(sprite_width/2),y+sprite_height, "$"+string(cost));
draw_set_halign(fa_left);

//buy with A button
if(global.menux==1 && global.menuy==0){
	if(keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1)){
		//buy lives if you have enough money
		if(global.money >= global.bomb_cost){
		    global.bombs += 1					//get bombs
		    global.money -= global.bomb_cost	//take money
		    sound_play(snd_teleport);
		}
	}
}