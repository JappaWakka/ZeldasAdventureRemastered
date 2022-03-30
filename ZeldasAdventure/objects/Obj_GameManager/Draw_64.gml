//Screen Fading
if global.FadeProgress = 0
{
	if FadeOut(global.FadeAlpha,255,global.FadeSpeed) = true
	{
		global.FadeProgress = 1
	}
}
if global.FadeProgress = 1
{
	if FadeIn(global.FadeAlpha,0,global.FadeSpeed) = true
	{
		global.FadeProgress = 2
	}
}

// Draw ScreenFade Rectangle
if global.FadeAlpha > 0
{
	Draw_ScreenFade()
}

// Draw GUI - Overworld
if room = Room_Overworld
{
	Draw_Hearts()
	Draw_Rubies_Overworld()
}
if global.Subtitle != ""
{
	Draw_Subtitles(viewWidth / 2, viewHeight, global.Subtitle,c_white,1,c_black,1,1,200,1 / global.WindowScale,1 / global.WindowScale,0);
} 