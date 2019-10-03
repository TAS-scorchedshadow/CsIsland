/// @description draw music bars
if mode == "init"
{
	alpha = 0
	while alpha < 1
	{
		alpha += 0.1
		var c_width = 1920/2
		var c_height = 500
		draw_sprite_ext(spr_music_sheet,0,c_width,c_height,1,1,0,c_white,alpha);
		draw_sprite_ext(spr_music_note,0,200,925,1,1,0,c_white,alpha/2);
	}
	mode = "init_2"
}
if mode == "start" or mode == "init_2"
{
	alpha = 1
	draw_sprite_ext(spr_music_sheet,0,1920/2,500,1,1,0,c_white,alpha);
	draw_sprite_ext(spr_music_note,0,200,925,1,1,0,c_white,alpha/2);
}
	