//move down if not mars or earth
event_inherited()

hp = 8;
hpmax=hp;
money=100;
instance_create_depth(x-7, y-7, depth+1, obj_ene_marine);
instance_create_depth(x+7, y-7, depth+1, obj_ene_marine);
instance_create_depth(x-7, y+7, depth+1, obj_ene_marine);
instance_create_depth(x+7, y+7, depth+1, obj_ene_marine);