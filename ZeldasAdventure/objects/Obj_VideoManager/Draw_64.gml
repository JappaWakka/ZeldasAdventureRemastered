/// @description Draw Skip Cutscene Text
// You can write your code in this editor

if SkipHintAlpha > 0
{
	Draw_SkipCutscene(ViewWidth - 32, 32, UI_Cutscene_Skip_Text(),c_white,SkipHintAlpha,c_black,SkipHintAlpha,1,200,1 / global.WindowScale,1 / global.WindowScale,0);
}