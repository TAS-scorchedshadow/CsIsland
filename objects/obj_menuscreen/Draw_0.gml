/// @description Draw Title Screen
draw_set_font(dnt)
draw_set_color(c_black)
draw_set_halign(fa_center)


//Draw Music Wheel
if album = 0 
{
	draw_sprite(spr_music_nuil,0,menux,menuy + 50);
	draw_text(menux,menuy , "No Track Selected");
}
if album = 1 || album = 2 {
	var music = folk_songlist;
	var sprite = spr_music_cover2
	if album = 2 
	{
		music = songlist
		sprite = spr_music_covers
	}
	if global.selectedbutton = 4 draw_set_color(c_white)
	draw_rectangle(menux-160,menuy-10,menux+160,menuy+510,false);
	draw_set_color(c_black)
	draw_sprite(sprite,song,menux,menuy)
	draw_text(menux,menuy - 50 , ds_grid_get(music,song,0));
	if !(song = 0)
	{
	draw_sprite_ext(sprite, song-1,menux - 300, menuy + 100,0.7,0.7,0,c_white,.7)
	draw_text(menux - 300, menuy+ 50, ds_grid_get(music,song - 1 ,0));
	}
	if song + 1 < ds_grid_width(music) {
	
	draw_sprite_ext(sprite, song+1,menux + 300, menuy + 100,0.7,0.7,0,c_white,.7)
	draw_text(menux + 300, menuy + 50, ds_grid_get(music,song + 1 ,0));
	}
}