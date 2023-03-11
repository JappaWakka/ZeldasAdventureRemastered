/// @description Draw HUD

if room = Room_Overworld
{
	Draw_HUD_Hearts()
	Draw_HUD_Rubies()
}
if global.ShowSubtitles = true && global.Subtitle != ""
{
	Draw_Subtitles(ViewWidth / 2, ViewHeight, global.Subtitle,c_white,1,c_black,1,1,200,1 / global.WindowScale,1 / global.WindowScale,0);
}
