///@desc thrusters from particle effects

//draw self
draw_self()

//thursters using particle system
action_parttype_create(0, 0, -1, 1, 2, 0);
part_type_color2(PARTSYS,c_aqua,c_blue);
part_type_gravity(PARTSYS, 0, 270);
part_type_direction(PARTSYS, 260, 280, -1, 10);
part_type_life(PARTSYS, 1, 5);
part_type_speed(PARTSYS, 2, 4, 0, 0);

//thruster left
THRUSTER_LEFT=part_emitter_create(PARTSYS);
part_emitter_region(PARTSYS, THRUSTER_LEFT, x-6, x-6, y+17, y+17, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(PARTSYS,THRUSTER_LEFT,0,50);

//thruster right
THRUSTER_RIGHT=part_emitter_create(PARTSYS);
part_emitter_region(PARTSYS, THRUSTER_RIGHT, x+7, x+7, y+17, y+17, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(PARTSYS,THRUSTER_RIGHT,0,50);