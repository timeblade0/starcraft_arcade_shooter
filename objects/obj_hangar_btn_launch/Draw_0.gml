//draw self
draw_self()

//show selected
image_index=0;
if(global.menux==0 && global.menuy==2) image_index=1;

/// @desc draw text
draw_set_color(c_white)
draw_set_font(fnt_consolas_20)
draw_set_halign(fa_center);
draw_text(x+(sprite_width/2),y+sprite_height, "LAUNCH")
draw_set_halign(fa_left);

//select with A button
if(global.menux==0 && global.menuy==2){
	if(keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1)){
		room_goto(global.level_room[global.level]);
	}
}