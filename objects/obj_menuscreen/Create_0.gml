global.selectedbutton = 0;

//Intialise Menu
menux = 1400
menuy = 500
ini_open("settings.ini")
song = ini_read_real("Audio", "Current Song", noone);
album = ini_read_real("Audio", "Music Group", 1);
music_level = ini_read_real("Audio", "Music Level", 0.5);
audio_group_set_gain(group_music,music_level,0);
ini_close();


folk_songlist = obj_musiccontroller.folk_songlist


//Alternative Music

songlist = ds_grid_create(7,2);

ds_grid_add(songlist,0,0,"The Prophet") //0
ds_grid_add(songlist,0,1,msc_prophet) //0

ds_grid_add(songlist,1,0,"Sincerly") //1
ds_grid_add(songlist,1,1,msc_sincerely) //1


ds_grid_add(songlist,2,0,"Grand Escape") //2
ds_grid_add(songlist,2,1,msc_grandescape) //2

ds_grid_add(songlist,3,0,"Light") 
ds_grid_add(songlist,3,1,msc_light)

ds_grid_add(songlist,4,0,"Inferno") 
ds_grid_add(songlist,4,1,msc_inferno)

ds_grid_add(songlist,5,0,"Frame of Mind") 
ds_grid_add(songlist,5,1,msc_frameofmind)

ds_grid_add(songlist,6,0,"Isabella's Lullabuy") 
ds_grid_add(songlist,6,1,msc_IsabellaLullaby)


