/// @description Random Motion
target_x=random(room_width)
target_y=random(room_height/2)+50
move_towards_point(target_x, target_y, unit_speed)

//rotate unit based on movement
direction=point_direction(x, y, target_x, target_y)
image_index=(direction/(360/image_number))

//cooldown for next motion change
alarm[0]=120;
