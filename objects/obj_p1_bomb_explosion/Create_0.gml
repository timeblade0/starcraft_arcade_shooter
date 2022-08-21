//random motion to make circle effect
action_set_motion(random(361), 8);

image_xscale = 0.3;
image_yscale = 0.3;
image_index = random(image_number);

//destroy after time
alarm[0] = 30;
