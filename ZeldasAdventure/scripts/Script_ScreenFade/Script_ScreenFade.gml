function FadeIn(StartAlpha = 255, EndAlpha = 0, FadeSpeed = 8)
{
	global.FadeAlpha = clamp(StartAlpha - 1 * d(FadeSpeed),0,255);
	if global.FadeAlpha > EndAlpha
	{
		global.CameraIsPanning = true;
		return false
	}
	else
	{
		global.CameraIsPanning = false;
		return true
	}
}

function FadeOut(StartAlpha = 0, EndAlpha = 255,FadeSpeed = 8)
{
	global.FadeAlpha = clamp(StartAlpha + 1 * d(FadeSpeed),0,255)
	if global.FadeAlpha < EndAlpha
	{
		global.CameraIsPanning = true;
		return false
	}
	else
	{
		global.CameraIsPanning = false;
		return true
	}
}

function Draw_ScreenFade()
{
	draw_set_colour(c_black);
	draw_set_alpha(global.FadeAlpha / 255);
	draw_rectangle(0,0,window_get_width(),window_get_height(),false);
	draw_set_alpha(1);
	draw_set_colour(c_white);
}