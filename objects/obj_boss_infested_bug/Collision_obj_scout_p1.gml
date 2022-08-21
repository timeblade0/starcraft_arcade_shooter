action_create_object(obj_protoss_explode_medium, x, y);
action_sound(snd_scout_die, 0);
action_move_start();
with (other) {
action_move_start();
}
lives-=1;