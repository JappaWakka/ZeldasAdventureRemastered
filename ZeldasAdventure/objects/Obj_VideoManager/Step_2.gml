/// @description Skip Cutscene
if input_check_pressed("action1") or input_check_pressed("action2") or input_check_pressed("inventory") or input_check_pressed("accept")
{
	switch room
		{
			case Room_Cutscene_Logos:
				VideoManager_Stop()
				room_goto(Room_Cutscene_Intro)
				break;
				
			case Room_Cutscene_Intro:
				VideoManager_Stop()
				global.FadeProgress = 1
				global.FadeAlpha = 255
				room_goto(Room_MainMenu)
				
			case Room_Cutscene_Shrine_Earth:
				if ConfirmSkip == true
				{
					SkipHintAlpha = 0
					global.PlayerSpawn = "Shrine1_Outside"
					global.FadeProgress = 1
					global.FadeAlpha = 255
					room_goto(Room_Overworld);
				}
				else
				{
					ConfirmSkip = true
					alarm[0] = 3 * FrameRate
				}
		
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