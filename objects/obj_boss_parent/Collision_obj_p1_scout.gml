//death of player
instance_create_depth(other.x,other.y,-1,obj_explode_protoss_medium);
action_sound(snd_death_scout, 0);
lives-=1;
x=startx
y=starty
other.x=other.startx
other.y=other.starty