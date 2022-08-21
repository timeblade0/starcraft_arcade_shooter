function scp_save_game() {
	//save game
	save_name="scas_save1.sc2"
	fname=file_text_open_write(""+string(save_name));	//start save

	//write weapons + general
	file_text_write_string(fname,string(global.level));file_text_writeln(fname);
	file_text_write_string(fname,string(lives));file_text_writeln(fname);
	file_text_write_string(fname,string(global.bombs));file_text_writeln(fname);
	file_text_write_string(fname,string(global.shield));file_text_writeln(fname);
	file_text_write_string(fname,string(global.money));file_text_writeln(fname);
	file_text_write_string(fname,string(global.yamato));file_text_writeln(fname);
	file_text_write_string(fname,string(global.quadshot));file_text_writeln(fname);
	file_text_write_string(fname,string(global.tailshot));file_text_writeln(fname);

	//close the file
	file_text_close(fname);
	
	//play sound
	audio_play_sound(snd_laser,1,0)
}
