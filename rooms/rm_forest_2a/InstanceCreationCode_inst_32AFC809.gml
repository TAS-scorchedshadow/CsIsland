lvl_desc = "The Forest";
ini_open("settings.ini");
var been_to_2b = ini_read_real("room_2_status","2b",0)
if been_to_2b = true
{
	target = rm_forest_3;
	lvl_desc = "Sleeping Beauty"
}
else
{
	target = rm_forest_2b
	ini_write_real("room_2_status","2a",1);
	lvl_desc = "Flamingo, Flamingle, Flamingo"
}
ini_close();