action_set_relative(1);
var __b__;
__b__ = action_if_variable(stun, 0, 0);
if __b__
{
{
hp += -5;
{
action_set_relative(0);
stun = 1;
action_set_relative(1);
}
{
action_set_relative(0);
action_set_alarm(20, 1);
action_set_relative(1);
}
}
}
action_set_relative(0);