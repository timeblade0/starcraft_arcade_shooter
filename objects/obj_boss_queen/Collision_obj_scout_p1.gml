action_set_relative(1);
action_create_object(obj_protoss_explode_medium, 0, 0);
action_sound(snd_scout_die, 0);
with (other) {
action_move_start();
}
lives += -1;
action_set_relative(0);
