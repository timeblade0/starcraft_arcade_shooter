action_set_relative(1);
action_sound(snd_ping, 0);
action_create_object(obj_blood_chunk, 0, 0);
with (other) {
action_create_object(obj_terran_explode_small, 0, 0);
}
with (other) {
instance_destroy();
}
action_set_relative(0);
