if global.selectedbutton = obj_return.buttonid room_goto(rm_title);

if global.selectedbutton = obj_fullscreen.buttonid 
{
	  if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
}
if global.selectedbutton = 4
{
	ini_open("settings.ini")
	ini_write_real("Audio", "Current Song",song);
	ini_write_real("Audio", "Music Group", album);
	ini_close();


	obj_musiccontroller.alarm[0] = 1;
}