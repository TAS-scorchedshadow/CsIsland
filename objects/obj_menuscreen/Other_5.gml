ini_open("settings.ini");
ini_write_real("Audio","Current Song",song);
ini_write_real("Audio","Current Song BPM",ds_grid_get(songlist,song,2));
ini_close();
ds_grid_destroy(songlist)
