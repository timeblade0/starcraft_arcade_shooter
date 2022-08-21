//initial variables
event_inherited()

//init var
hp = 100;
hpmax = hp;
shot_cooldown = 30;
unit_speed=6;

//shot
alarm[0] = shot_cooldown;

//follow path
path_start(path_boss_wrath_red, unit_speed, 2, 1);
