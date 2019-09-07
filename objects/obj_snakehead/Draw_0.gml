draw_self();
var i
var v

draw_set_font(fnt_title)
draw_set_color(c_white)
draw_set_halign(fa_center)
for (i=0;ds_list_size(avaliabledir);i++)
{
	v = ds_list_find_index(avaliabledir,i)
	draw_text(100,200,v)
	switch v 
	{
		case 0:
			yy = -64
		case 90:
			xx = 64
		case 180:
			yy = 64
		case 270:
			xx = -64
		
	}
	draw_sprite_ext(spr_arrow,0,x+xx,y+yy,1,1,0,0,1);
}
