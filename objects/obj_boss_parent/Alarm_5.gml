/// @desc random bomb pickups
instance_create_depth(random(view_width()), view_top(), -1, obj_pickup_bomb);
alarm[5]=1000+random(1000)
