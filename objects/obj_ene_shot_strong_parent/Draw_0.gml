/// @desc draw hp bar

//draw self
draw_self()

//draw hp bar
if(hp<hpmax){
	draw_sprite_ext(spr_hpbar_small,(hp/hpmax)*8,x,y-(sprite_height/2),1,1,0,c_white,0.5)	//hp bar has 8 frames
}