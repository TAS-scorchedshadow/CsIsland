global.selectedbutton = 0;

//Intialise Menu
menux = 1400
menuy = 400
song = 1
songlist = ds_grid_create(4,2);

ds_grid_add(songlist,0,0,"The Prophet") //0
ds_grid_add(songlist,0,1,msc_prophet) //0

ds_grid_add(songlist,1,0,"Sincerly") //1
ds_grid_add(songlist,1,1,msc_sincerely) //1

ds_grid_add(songlist,2,0,"Grand Escape") //2
ds_grid_add(songlist,2,1,msc_grandescape) //2

ds_grid_add(songlist,3,0,"Light") 
ds_grid_add(songlist,3,1,msc_light)

array_width = ds_grid_width(songlist);
array_height = ds_grid_height(songlist);