//initial variables
event_inherited()

//initial variables
hp=100;
hpmax=hp;
unit_speed=5;
image_speed=0

//chase player
move_towards_point(obj_p1_scout.x, obj_p1_scout.y, unit_speed);
alarm[0]=70;