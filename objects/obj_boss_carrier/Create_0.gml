//initial variables
event_inherited()

//init var
hp=250;
hpmax=hp;
unit_speed=4;
image_speed=0
image_xscale=1.5
image_yscale=1.5

//follow boss path
path_start(path_boss_carrier, unit_speed, 1, 1);

//make intercepter
alarm[0]=20;
