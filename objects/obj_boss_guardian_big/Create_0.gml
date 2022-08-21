//init var
event_inherited()
hp=300;
hpmax=hp;
unit_speed=4

//image var
image_speed=0;
image_index=0;
image_xscale = 2
image_yscale = 2

//hatching sound
action_sound(snd_ready_gaurdian, 0);

//move along path
path_start(path_boss_guardian, unit_speed, path_action_restart, 0);

//shot
alarm[0]=90;

//spawn enemies
alarm[4]=120;
