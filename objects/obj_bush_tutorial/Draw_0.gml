/// @description Insert description here
// You can write your code in this editor
if draw = true
{
	draw_set_font(font_tut)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_colour(c_white)
	draw_text_ext_color(x+32,y-96,"[E]",5,300,c_white,c_white,c_white,c_white,alpha)
}
if mode = "fade-in"
{
	if alpha < 1
	{
		alpha += 0.01
	}
}
if mode = "fade-out"
{
	if alpha > 0
	{
		alpha -= 0.1
	}
	else
	{
		draw = false
		mode = ""
	}
}