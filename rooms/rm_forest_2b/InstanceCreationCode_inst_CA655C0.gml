target = rm_forest_3;
ini_open("settings.ini");
var been_to_2a = ini_read_real("room_2_status","2a",0)
if been_to_2a = true
{
	target = rm_forest_3;
	lvl_desc = "Sleeping Beauty";
}
else
{
	target = rm_forest_2a
	ini_write_real("room_2_status","2b",1);
	lvl_desc = "Rocking It"
}
ini_close();