shadow = true;
enum directions  {
left,
right

   
}
global.facing_direction = directions.right
HMove = 0 //Distance a block will move in a single step
VMove = 0;
ASpeed = 0.2 //Accelration constant (ASpeed must be greater than DSpeed)
DSpeed = 0.2 //Deceleration constant (Lowest is slippery)
max_speed = 4; //Max Speed

//Reloading Character Position in room
ini_open("player.ini");
x = ini_read_real("position","playerx",300);
y = ini_read_real("position","playery",500);
ini_close();

