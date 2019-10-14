growing = false;
scale = 0;
rotation = 0;
opacity = 1;
shrinking = false;
fnt_cursive = font_add("gradecursive-2-italic.ttf", 40, false, false, 32, 128);
ds_text = ds_grid_create(3,3);

enum fade
{
	hidden,
	in,
	hold,
	stop
}

var xw = display_get_gui_width();
var yw = display_get_gui_height();

ds_grid_add(ds_text,0,0,"Charlotte's Island") //0
ds_grid_add(ds_text,0,1,0) 
ds_grid_add(ds_text,0,2,fade.in); 



ds_grid_add(ds_text,1,0,"By Dylan Huynh and Henry Guo") //1
ds_grid_add(ds_text,1,1,0) 
ds_grid_add(ds_text,1,2,fade.hidden); 



alarm[0] = room_speed * 4
alarm[1] = room_speed * 10 

