//draw self
draw_self()

//show selected
image_index=0;
if(global.menux==1 && global.menuy==2) image_index=1;

//select with A button
if(global.menux==1 && global.menuy==2){
	if(keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1)){
		if(window_get_fullscreen()) window_set_fullscreen(0)
		else if(!window_get_fullscreen()) window_set_fullscreen(1)
	}
}