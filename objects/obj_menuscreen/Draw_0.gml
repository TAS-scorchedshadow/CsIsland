/// @description Draw Title Screen
draw_set_font(font0)
draw_set_color(c_black)
draw_set_halign(fa_center)

//Draw Music Wheel
draw_sprite(spr_music_covers,song,menux,menuy)
draw_text(menux,menuy - 50 , ds_grid_get(songlist,song,0));
if !(song = 0)
{
draw_sprite_ext(spr_music_covers, song-1,menux - 300, menuy + 100,0.7,0.7,0,c_white,.7)
draw_text(menux - 300, menuy+ 50, ds_grid_get(songlist,song - 1 ,0));
}
if song + 1 < ds_grid_width(songlist) {
	
draw_sprite_ext(spr_music_covers, song+1,menux + 300, menuy + 100,0.7,0.7,0,c_white,.7)
draw_text(menux + 300, menuy + 50, ds_grid_get(songlist,song + 1 ,0));
}