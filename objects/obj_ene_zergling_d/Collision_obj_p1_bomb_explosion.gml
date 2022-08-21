action_set_relative(1);
action_create_object(obj_zergling_dying, 0, 0);
action_sound(snd_zergling_die, 0);
with (other) {
instance_destroy();
}
instance_destroy();
action_set_relative(0);
