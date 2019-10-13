var xw = display_get_gui_width();
var yw = display_get_gui_height();

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(xw/2,200,title_text);

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
}
if shrinking == true 
{
	opacity -= 0.01;
	if opacity <= 0.3
	{
	room_goto(rm_test)
	}
}