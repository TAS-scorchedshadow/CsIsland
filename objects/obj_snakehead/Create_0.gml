avaliabledir = ds_list_create() //Create dslist that will hold the directions that the snake can travel
i = 0
xx = 0
yy = 0
move = 60
moving = false
totaldirections = 0
chosendirection = 5
ini_open("song.ini") //To save memory the song info was saved to an ini file
tempo = ini_read_real("Audio", "Current Song BPM", 60) 
ini_close();
alarm[1] = 1
alarm[2] = 2
