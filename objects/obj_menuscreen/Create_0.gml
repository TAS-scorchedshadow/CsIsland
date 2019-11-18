global.selectedbutton = 0;

//Intialise Menu
menux = 1400
menuy = 500
ini_open("settings.ini")
song = ini_read_real("Audio", "Current Song", msc_prophet);
album = ini_read_real("Audio", "Music Group", 1);
music_level = ini_read_real("Audio", "Music Level", 0.3);
audio_group_set_gain(group_music,music_level,500);
time = ini_read_real("Time","Option",0);
ini_close();
folk_songlist = obj_musiccontroller.folk_songlist
songlist = obj_musiccontroller.songlist




