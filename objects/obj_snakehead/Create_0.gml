avaliabledir = ds_list_create()
i = 0
xx = 0
yy = 0
totaldirections = 0
chosendirection = 5
ini_open("song.ini")
tempo = ini_read_real("Audio", "Current Song BPM", 60) / 60 
ini_close();
alarm[1] = 1
alarm[2] = 2
