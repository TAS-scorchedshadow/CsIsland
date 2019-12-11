/// @description Zoom Out
if (room != rm_title and room != rm_menu and room!=rm_ending) {
	zoom -= 0.05;
	zoom = clamp(zoom,0.5,1.5);
}