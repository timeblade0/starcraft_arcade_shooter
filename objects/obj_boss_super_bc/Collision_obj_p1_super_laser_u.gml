action_set_relative(1);
with (other) {
action_create_object(obj_terran_explode_small, 0, 0);
}
with (other) {
instance_destroy();
}
hp += -other.boss_damage;
action_set_relative(0);
