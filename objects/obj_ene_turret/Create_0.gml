//move down if not mars or earth
event_inherited()

//init var
hp = 10;
hpmax=hp;
money=100;
image_index = random(image_number + 1);
image_speed = 0.25;

//shot cooldown
alarm[0]=random(150);
