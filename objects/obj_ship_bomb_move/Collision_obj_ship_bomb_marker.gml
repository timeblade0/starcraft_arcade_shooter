//explode bomb
with (other) { instance_destroy(); }
repeat( 200 )	instance_create_depth(x,y,-1,obj_p1_bomb_explosion);
instance_destroy();
