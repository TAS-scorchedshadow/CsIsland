///@description Save Player Location
ini_open("player.ini")
ini_write_real("position","playerx",x);
ini_write_real("position","playery",y);
ini_close();
