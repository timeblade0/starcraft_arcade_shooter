move_bounce_all(0)
mine=0
if(instance_exists(own_minerals)==1){
move_towards_point(own_minerals.x,own_minerals.y,unit_speed)
}
