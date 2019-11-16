/// @description draw music bars
if mode == "pre-init"
{
	obj_player.hascontrol = false
	alpha = 0
	mode = "init"
}

if mode == "init"
{
	alpha += 0.05
	draw_sprite_ext(spr_music_sheet,0,obj_camera.x,obj_camera.y+250,0.5,0.5,0,c_white,alpha);
	if alpha >= 1
	{
		instance_create_layer(obj_camera.x - 350, obj_camera.y + 190,"Song",obj_music_note_check)
		mode = "init_2"
	}
}
if mode == "start" or mode == "init_2"
{
	alpha = 1
	draw_sprite_ext(spr_music_sheet,0,obj_camera.x,obj_camera.y+250,0.5,0.5,0,c_white,alpha);
	if global.music_score != ""
	{
		draw_set_font(dnt_larger)
		draw_text(obj_camera.x,obj_camera.y+75,global.music_score);
	}
}
	