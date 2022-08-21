//initial variables
shot=0				//shot cooldown toggle
shot_cooldown=6;	//shot cooldown amount
stun=0				//delay between damage
unit_speed=6		//speed for moving
startx=x			//for boss collision
starty=y			//for boss collision

//recharge shields over time
alarm[2]=100

//particle system for thrusters
PARTSYS=part_system_create();
part_system_depth(PARTSYS,98);