ini_open("song.ini");
ini_write_real("Audio","Current Song",song);
ini_close();
ds_grid_destroy(songlist)
