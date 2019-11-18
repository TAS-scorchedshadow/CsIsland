//Music Level
if global.selectedbutton = 3
{
	var new_level = music_level - (5/100)
	audio_group_set_gain(group_music,new_level,0);
	music_level = new_level;
}

if global.selectedbutton = 2
{
	time --
	if time < 0 time = 2;
}
//Music Type
if global.selectedbutton = obj_music_type.buttonid album --

//Music Selection
if global.selectedbutton = 5 song --

if album < 0 album = 2;

var music = folk_songlist;
if album = 2 music = songlist
if song < 0 song = ds_grid_width(music) - 1
