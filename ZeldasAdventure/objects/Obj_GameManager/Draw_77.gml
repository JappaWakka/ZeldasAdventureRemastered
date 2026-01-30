/// @description Correct Resolution
// You can write your code in this editor

var Resolution = 
[	ViewWidth * global.WindowScale,
	(ViewHeight + global.AspectRatio) * global.WindowScale
]
if surface_get_width(application_surface) != Resolution[0] or surface_get_height(application_surface) != Resolution[1] or
window_get_width() != Resolution[0] or window_get_height() != Resolution[1]
{
	window_set_size(Resolution[0],Resolution[1]);
	surface_resize(application_surface,Resolution[0],Resolution[1]);
}