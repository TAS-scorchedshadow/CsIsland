shadow = true;
hascontrol = true;
enum directions  {
left,
right,
up,
down

   
}
global.facing_direction = directions.right
HMove = 0 //Distance a block will move in a single step
VMove = 0;
ASpeed = 0.5 //Accelration constant (ASpeed must be greater than DSpeed)
DSpeed = 0.5 //Deceleration constant (Lowest is slippery)
max_speed = 4; //Max Speed
ticks_moved = 0;
if !instance_exists(obj_gui) instance_create_layer(x,y,"Instances",obj_gui)
if !instance_exists(obj_transitions) instance_create_layer(x,y,"Instances",obj_transitions);

//vars to draw artifacts on the player
artifact = 0 //number of artifacts


//check the amount of artifacts the player had before it was destroyed previously
for (var i = 0; i <= 2; i += 1)
{
	if (ds_grid_get(global.artifact_grid, i, 2) == 1) artifact++
}