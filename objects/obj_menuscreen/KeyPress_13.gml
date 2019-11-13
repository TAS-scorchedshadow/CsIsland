if global.selectedbutton = 0 room_goto(rm_title);

if global.selectedbutton = 1 
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
if global.selectedbutton = 3
{
	audio_stop_all();
	var music = folk_songlist;
	if album = 2 music = songlist
	audio_play_sound(ds_grid_get(music,song,1),0,false);
}