move_bounce_all(0)
mine=1
current_id=instance_nearest(x,y,obj_cc_ene)
if(instance_exists(obj_cc_ene)==1){
move_towards_point(current_id.x,current_id.y,unit_speed)
}
