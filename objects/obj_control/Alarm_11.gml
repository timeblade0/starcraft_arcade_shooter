/// @description Delay before Level Complete Message

//victory music
audio_stop_all();
audio_play_sound(snd_sf_snes_stage_clear,1,0);

//take screenshot and pause
instance_deactivate_all(1)
screenshot=sprite_create_from_surface(application_surface,0,0,view_width(),view_height(),0,0,0,0);

//increase lives and level
lives+=1
global.level+=1;

//set mission accomplished message
global.message=1;
global.pause=1;