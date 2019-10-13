draw_sprite_ext(spr_news,0,display_get_gui_width()/2,display_get_gui_height()/2,scale,scale,rotation,c_white,opacity);

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
	obj_player.hascontrol = true;
	opacity -= 0.01;
	if opacity <= 0
	{
	instance_destroy(self);
	}
}