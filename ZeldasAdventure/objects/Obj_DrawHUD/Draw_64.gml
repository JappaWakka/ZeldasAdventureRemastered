/// @description Draw HUD

if room = Room_Overworld
{
	Draw_HUD_Hearts()
	Draw_HUD_Rubies()
}
if global.ShowSubtitles = true && global.Subtitle != ""
{
	var AspectY = 1
	if global.AspectRatio != 0
	{
		AspectY = ViewHeight / (ViewHeight + global.AspectRatio)
	}
	Draw_Subtitles(ViewWidth / 2, ViewHeight, global.Subtitle,c_white,1,c_black,1,1,AspectY,200,1 / global.WindowScale,1 / global.WindowScale * AspectY,0);
}
