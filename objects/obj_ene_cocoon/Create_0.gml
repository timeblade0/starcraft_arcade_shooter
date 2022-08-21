//initial_variables
hp=20
hpmax=hp
money=10;

//time to hatch
AA=floor(random(4))		//choose enemy to spawn
if(AA==3){ image_xscale=-0.75; image_yscale=0.75; }	//flip egg and make smaller if scourge
alarm[0]=120

//move down slowly
vspeed=global.vertspeed/2