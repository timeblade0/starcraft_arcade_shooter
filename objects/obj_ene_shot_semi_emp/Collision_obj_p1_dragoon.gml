action_set_relative(1);
with (obj_p1_scout) {
instance_create_depth(obj_explode_protoss_small, 20, 20);
}
instance_destroy();
{
action_set_relative(0);
global.shield = 1;
action_set_relative(1);
}
action_sound(snd_shuttle_die, 0);
action_set_relative(0);
