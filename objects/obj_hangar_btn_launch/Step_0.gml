/// @desc Enter/Start to exit shop
if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start)){
	global.message=0
	global.pause=0
	room_goto(global.level_room[global.level]);
}