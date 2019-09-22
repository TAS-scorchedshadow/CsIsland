/*
The workable screen size is 960 x 540 exactly half of the 1080p ratio
Let's define a unit as a "block" being 30 x 30 pixels wide. This ensures that the tiles fit nicely vertically and horizontally.
In early testing it looks like the player should be around 2 blocks wide.
*/

camera_width = 960;
camera_height = 540;

ini_open("player.ini");
x = ini_read_real("position","playerx",300);
y = ini_read_real("position","playery",500);
ini_close();

camera = camera_create();

var vm = matrix_build_lookat(x,y,-30,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(camera_width,camera_height,1,100000)

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = obj_player
xTo = x;
yTo = y;

xoffset = 200;
yoffset = 0;
