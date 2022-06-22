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

