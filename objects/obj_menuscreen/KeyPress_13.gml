if global.selectedbutton = 0 room_goto_previous();

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
if global.selectedbutton = 2
{
	audio_stop_all();
	audio_play_sound(ds_grid_get(songlist,song,1),0,false);
}