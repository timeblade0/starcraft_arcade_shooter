//take damage from bomb
if(stun==0){
	stun = 1;
	alarm[2]=30;
	hp-=10;
}

//destroy parts of explosion that hit boss
instance_destroy(other);
