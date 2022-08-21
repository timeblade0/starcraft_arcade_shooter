//draw self
draw_self()
draw_sprite(spr_save, -1, x+sprite_width/2, y+sprite_height/2);

//show selected
image_index=0;
if(global.menux==0 && global.menuy==1) image_index=1;

/// @desc draw save
draw_set_color(c_white)
draw_set_font(fnt_consolas_20)
draw_set_halign(fa_center);
draw_text(x+(sprite_width/2),y+sprite_height, "SAVE")
draw_set_halign(fa_left);

//select with A button
if(global.menux==0 && global.menuy==1){
	if(keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1)){
		scp_save_game();
	}
}