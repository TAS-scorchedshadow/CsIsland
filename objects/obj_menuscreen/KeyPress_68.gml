if global.selectedbutton = 2 album ++

if global.selectedbutton = 3 
{
	song ++

}


var music = folk_songlist;
if album = 2 music = songlist
if (song >= ds_grid_width(music)) song = 0
if album > 2 album = 0
