avaliabledir = ds_list_create() //Create dslist that will hold the directions that the snake can travel
i = 0
xx = 0
yy = 0
move = 64
moving = false
chosendirection = 5
highlighteddirection = 0
ini_open("settings.ini") //To save memory the song info was saved to an ini file
tempo = ini_read_real("Audio", "Current Song BPM", 60) 
ini_close();
alarm[1] = 1
alarm[2] = 2
