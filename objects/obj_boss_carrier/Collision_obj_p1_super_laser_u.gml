action_set_relative(1);
action_create_object(obj_blood_chunk, 0, 0);
with (other) {
instance_destroy();
}
hp += -other.boss_damage;
action_set_relative(0);
