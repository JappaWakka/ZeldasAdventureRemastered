/// @description Skip Cutscene
if input_check_pressed("action") or input_check_pressed("special") or input_check_pressed("inventory")
{
	if room = Room_Cutscene_Logos
	{
		VideoManager_Stop()
		room_goto(Room_Cutscene_Intro)
	}
	else if room = Room_Cutscene_Intro
	{
		VideoManager_Stop()
		room_goto(Room_MainMenu)
	}
	global.Subtitle = ""
}
if input_check_pressed("menu")
{
	if room = Room_Cutscene_Logos or room = Room_Cutscene_Intro
	{
		VideoManager_Stop()
		room_goto(Room_MainMenu)
	}
	global.Subtitle = ""
}