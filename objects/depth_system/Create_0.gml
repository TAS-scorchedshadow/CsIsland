/// @description Create Dynamic Grid
ds_depthgrid = ds_grid_create(2,1);

ini_open("settings.ini")
//Daynight
minutes = ini_read_real("Time","Minutes",0);
hours = ini_read_real("Time","Hours",0);
time = ini_read_real("Time","time",1);
time_speed = ini_read_real("Time","speed",0.5);

minutespeed = time_speed * room_speed //How long is one minute (in seconds because reasons)
alarm[0] = 1

PM = ini_read_real("Time","PM",1);
darkness = 0; //Opacity (0-1)
light_colour = c_black

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

