/// @description 
mode = ""
song = "lost_woods_section_1"
play_music = msc_lost_woods
music = ds_grid_create(10,2)
tempo = 0
goal_rank = ""
assigned_mat = ""
global.music_score = ""
global.total_music_score = 0
ds_grid_add(music,0,0,"lost_woods_section_1")
ds_grid_add(music,0,1,80/60)
ds_grid_add(music,1,0,"lost_woods_full")
ds_grid_add(music,1,1,80/60)
note_no = 3
alarm_start = false
song_playing = false
enum letter_rank
{
	D,
	C,
	B,
	A,
	S
}
music_rank = "D" //string