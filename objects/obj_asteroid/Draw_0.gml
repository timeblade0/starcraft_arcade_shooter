/// @desc draw hp bar

//draw self
draw_self()

//draw hp bar
if(hp<hpmax){
	draw_sprite(spr_hpbar_small,(hp/hpmax)*8,x,y-(sprite_height/2))	//hp bar has 8 frames
}