//take damage from bomb
if(stun==0){
	stun = 1;
	alarm[2]=30;
	hp-=5;
	instance_destroy(other);
}
