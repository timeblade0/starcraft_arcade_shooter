action_set_relative(1);
var __b__;
__b__ = action_if_variable(global.fire_shield, 0, 0);
if __b__
{
{
with (other) {
instance_create_depth(obj_explode_protoss_medium, 0, 0);
}
instance_destroy();
global.shield += -100;
action_sound(snd_dragoon_die, 0);
with (other) {
action_move_start();
}
}
}
__b__ = action_if_variable(global.fire_shield, 1, 0);
if __b__
{
{
instance_destroy();
}
}
action_set_relative(0);
