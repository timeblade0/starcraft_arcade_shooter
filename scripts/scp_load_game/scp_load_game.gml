function scp_load_game() {
	//save game
	save_name="scas_save1.sc2"
	fname=file_text_open_read(""+string(save_name));	//start load
	
	//write planets completed
	global.level=file_text_read_real(fname);file_text_readln(fname);
	lives=file_text_read_real(fname);file_text_readln(fname);
	global.bombs=file_text_read_real(fname);file_text_readln(fname);
	global.shield=file_text_read_real(fname);file_text_readln(fname);
	global.money=file_text_read_real(fname);file_text_readln(fname);
	global.yamato=file_text_read_real(fname);file_text_readln(fname);
	global.quadshot=file_text_read_real(fname);file_text_readln(fname);
	global.tailshot=file_text_read_real(fname);file_text_readln(fname);

	//close the file
	file_text_close(fname);
	
	//go to hangar
	room_goto(room_hangar);
}
