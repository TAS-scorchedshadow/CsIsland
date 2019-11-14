ini_open("settings.ini");
ini_write_real("Audio","Current Song",song);
ini_write_real("Audio", "Music Group", album);
ini_write_real("Audio", "Music Level", music_level);
ini_close();
