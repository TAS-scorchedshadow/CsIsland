if global.selectedbutton = 3
{
	var new_level = music_level + (5/100)
	audio_group_set_gain(group_music,new_level,0);
	music_level = new_level;
}

if global.selectedbutton = 2
{
	time ++
	if time > 2 time = 0;
}

if global.selectedbutton = obj_music_type.buttonid  album ++

if global.selectedbutton = 5
{
	song ++

}


var music = folk_songlist;
if album = 2 music = songlist
if (song >= ds_grid_width(music)) song = 0
if album > 2 album = 0
