draw_self();
draw_set_font(fnt_title)
draw_set_color(c_black)
draw_set_halign(fa_center)
//My angle numbers work off a clock not the unit circle lmao.

if ds_list_find_index(avaliabledir,0) >= 0 
{
	if chosendirection = 0
	{
		draw_sprite_ext(spr_arrow,1,x,y-move,1,1,0,c_white,1); //If correct direction draw highlight arrow 
	}
	else{ draw_sprite_ext(spr_arrow,0,x,y-move,1,1,0,c_white,1);} //Else draw regular arrow
}

if ds_list_find_index(avaliabledir,90) >= 0 
{
	if chosendirection = 1
	{
		draw_sprite_ext(spr_arrow,1,x+move,y,1,1,270,c_white,1);
	}
	else {draw_sprite_ext(spr_arrow,0,x+move,y,1,1,270,c_white,1);}
}

if ds_list_find_index(avaliabledir,180) >= 0 
{
	if chosendirection = 2
	{
		draw_sprite_ext(spr_arrow,1,x,y+move,1,1,180,c_white,1);
	}
	else {draw_sprite_ext(spr_arrow,0,x,y+move,1,1,180,c_white,1);}
}

if ds_list_find_index(avaliabledir,270) >= 0 
{
	if chosendirection = 3
	{
		draw_sprite_ext(spr_arrow,1,x-move,y,1,1,90,c_white,1);
	}
	else {draw_sprite_ext(spr_arrow,0,x-move,y,1,1,90,c_white,1);}
}
