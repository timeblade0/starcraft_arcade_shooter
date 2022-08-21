//death and remove at bottom of view
event_inherited()

//charge player one time if in view
if((one_time==0) && scp_object_in_view()==1){
	move_towards_point(obj_p1_scout.x, obj_p1_scout.y, unit_speed);
	image_angle=point_direction(x,y,obj_p1_scout.x,obj_p1_scout.y)
	one_time=1;
}