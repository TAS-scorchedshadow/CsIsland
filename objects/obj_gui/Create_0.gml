audio_group_load(walking);
global.selecteditem = 0;
global.no_cut = 0;
fnt_cursive = font_add("gradecursive-2-italic.ttf", 40, false, false, 32, 128);
global.objective = ""

ini_open("settings.ini");
entrance_number = 1;
from_menu = false;
blackbars = false;
ini_close();