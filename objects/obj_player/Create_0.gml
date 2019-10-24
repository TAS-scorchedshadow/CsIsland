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

if !instance_exists(obj_gui) instance_create_layer(x,y,"Instances",obj_gui)
if !instance_exists(obj_transitions) instance_create_layer(x,y,"Instances",obj_transitions);