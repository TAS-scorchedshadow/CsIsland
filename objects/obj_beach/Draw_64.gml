///@description Draw Newspaper
var xw = display_get_gui_width();
var yw = display_get_gui_height();

draw_set_font(fnt_Tcursive);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Draw Title
draw_text_ext_color(xw/2,100,ds_grid_get(ds_text,0,0),50,7000,c_white,c_white,c_white,c_white,ds_grid_get(ds_text,0,1));

//Draw Description
draw_set_font(fnt_Scursive);
draw_text_ext_color(xw/2,250,ds_grid_get(ds_text,1,0),50,7000,c_white,c_white,c_white,c_white,ds_grid_get(ds_text,1,1))


//Draw Names
draw_set_font(fnt_cursive)
draw_text_ext_color(xw/2,900,ds_grid_get(ds_text,2,0),50,7000,c_white,c_white,c_white,c_white,ds_grid_get(ds_text,2,1));

//Draw Newspaper 
draw_sprite_ext(spr_news,0,xw/2,yw/2,scale,scale,rotation,c_white,opacity);

if growing = true 
{
	scale +=  (1 - scale)/20; //Exponential Growth
	rotation += (720 - rotation)/20;
}
if scale >= 1 
{
	growing = false;
	alarm[3] = 10*room_speed;
}
if shrinking == true 
{
	opacity -= 0.01;
	if opacity <= 0.3
	{
	room_goto(rm_test)
	}
}