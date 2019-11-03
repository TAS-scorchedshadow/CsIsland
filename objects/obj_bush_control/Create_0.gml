/// @description Setting variables
// You must set global.no_cut in creation code (else things break)
global.bush_cut = false
bush_map = ds_grid_create(100,2);  //  (x-value of grid = instance_id) , (y-value of grid = image_index)
boulder_map = ds_grid_create(100,3);
flamingo_map = ds_grid_create(100,3);
no_flamingo = instance_number(obj_snakehead);
no_boulder = instance_number(obj_boulder);
no_bush = instance_number(obj_bush);
global.bush_reset = false
first_check = false
