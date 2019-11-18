ini_open("settings.ini");
ini_write_real("Audio","Current Song",song);
ini_write_real("Audio", "Music Group", album);
ini_write_real("Audio", "Music Level", music_level);

if time = 0 
{
	ini_write_real("Time","time",0)
	ini_write_real("Time","Hours",3)
	ini_write_real("Time","Minutes",0)

}
else
{
	ini_write_real("Time","time",1)
	if time = 1 ini_write_real("Time","speed",0.5);
	if time = 2 ini_write_real("Time","speed",0.05);
}
ini_write_real("Time","Option",time);
ini_close();
