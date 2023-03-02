/// @description Skip Cutscene
if input_check_pressed("Action") or input_check_pressed("Special") or input_check_pressed("Inventory")
{
	if room = Room_Cutscene_Logos
	{
		VideoManager_Stop()
		room_goto(Room_Cutscene_Intro)
	}
	else if room = Room_Cutscene_Intro
	{
		VideoManager_Stop()
		global.FadeProgress = 1
		global.FadeAlpha = 255
		room_goto(Room_MainMenu)
	}
	global.Subtitle = ""
}
if input_check_pressed("Menu")
{
	if room = Room_Cutscene_Logos or room = Room_Cutscene_Intro
	{
		VideoManager_Stop()
		global.FadeProgress = 1
		global.FadeAlpha = 255
		room_goto(Room_MainMenu)
	}
	global.Subtitle = ""
}