/// @description
with (instance_nearest(x,y,obj_music_note))
	if keyboard_check_pressed(ord("E"))
		{
			if abs(obj_music_note_check.x - x) < 10
			{
				global.music_score = "Perfect"
				global.total_music_score += 300
				instance_destroy()
			}
			else if abs(obj_music_note_check.x - x) < 50
			{
				global.music_score = "Good"
				global.total_music_score += 100
				instance_destroy();
			}
			else
			{
				global.music_score = "Bad"
			}
		}
x = obj_camera.x - 350
y = obj_camera.y + 190