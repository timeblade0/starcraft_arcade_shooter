action_set_relative(1);
with (other) {
instance_destroy();
}
hp += -other.boss_damage;
with (other) {
action_create_object(obj_terran_explode_medium, 0, 0);
}
action_set_relative(0);
