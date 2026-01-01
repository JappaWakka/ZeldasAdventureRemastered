// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ExitMenu_QuitWithoutSave()
{
	Audio_StopMusic()
	QuitToMainMenu = true;
	global.CameraIsFading = true;
	global.FadeProgress = 0;
	global.FadeSpeed = 16;
}