if change = true && flute = false
{
	
	ini_open("settings.ini")
	song = ini_read_real("Audio", "Current Song", 0);
	album = ini_read_real("Audio", "Music Group", 1);

	var var_album = folk_songlist
	if album = 2 var_album = songlist

	current_song = ds_grid_get(var_album,song,1);
	var len = audio_sound_length(current_song);
	audio_play_sound(current_song,10,false)
	alarm[0] = (len - 2) * room_speed

	if song + 1 > ds_grid_width(var_album) - 1
	{
		song = 0
	}
	else 
	{
		song ++ 
	}

	ini_write_real("Audio", "Current Song", song);
	ini_close();
	change = false;
}