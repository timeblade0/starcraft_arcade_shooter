/// @desc Death animation and sound
instance_create_depth(x, y, -1, obj_explode_protoss_small);
action_sound(snd_death_scout, 0);
global.money+=money;
if(instance_number(owner)>0){ owner.intercepters-=1; }