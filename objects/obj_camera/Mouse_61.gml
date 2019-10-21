/// @description Zoom In
if (room != rm_title and room != rm_menu) {
	zoom += 0.05;
	zoom = clamp(zoom,0.5,1.1);
}