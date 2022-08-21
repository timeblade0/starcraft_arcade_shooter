//initial variables
event_inherited()

//init var
hp=300;
hpmax=hp;
unit_speed=6;
image_speed=0
image_index=12
image_xscale=2
image_yscale=2

//follow boss path
path_start(path_boss_devourer, unit_speed, 1, 0);

//shot
alarm[0]=51;
