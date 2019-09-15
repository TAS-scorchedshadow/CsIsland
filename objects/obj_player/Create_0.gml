enum directions {
left,
right

   
}
facing_direction = directions.right
HMove = 0 //Distance a block will move in a single step
VMove = 0;
ASpeed = 0.5 //Accelration constant 
DSpeed = 0.5 //Deceleration constant (Lowest is slippery)
max_speed = 7; //Max Speed

//Reloading Character Position in room
ini_open("player.ini");
x = ini_read_real("position","playerx",300);
y = ini_read_real("position","playery",500);
ini_close();
