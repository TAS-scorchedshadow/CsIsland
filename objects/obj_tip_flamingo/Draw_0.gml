/// @description
if draw = true
{
	draw_set_font(dnt)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_colour(c_white)
	draw_text_ext_color(x+32,y-120,"[E]",5,300,c_white,c_white,c_white,c_white,alpha)
}
if display_text = true
{
   draw	= false
   draw_set_alpha(alpha - 0.1)
   draw_set_color(c_white)
   draw_rectangle(box_x1,box_y1,box_x2,box_y2, false) //try true for last argument
   draw_set_halign(fa_left)
   draw_set_valign(fa_top)
   draw_set_font(dnt)
   draw_text_ext_color(box_message_x1,box_message_y1,box_message,12,190,c_black,c_black,c_black,c_black,alpha)
}
draw_set_alpha(1)
draw_self()