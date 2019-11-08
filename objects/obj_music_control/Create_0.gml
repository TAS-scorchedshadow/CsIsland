/// @description 
mode = ""
song = "lost_woods_section_1"
play_music = msc_lost_woods
music = ds_grid_create(10,2)
tempo = 0
global.music_score = ""
ds_grid_add(music,0,0,"lost_woods_section_1")
ds_grid_add(music,0,1,80/60)
note_no = 3
alarm_start = false
song_playing = false
depth = -100