/// @desc face player
//draw self and hpbar
event_inherited()

//set rotation
AA=point_direction(x,y,obj_p1_scout.x, obj_p1_scout.y)
image_index=(AA/(360/image_number))
