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
				global.Subtitle = ""
				room_goto(Room_MainMenu)
				break;
			case Room_Cutscene_Shrine_Earth:
				if ConfirmSkip == true
				{
					VideoManager_Stop()
					audio_play_sound(Settings_Accept,1000,false)
					SkipHintAlpha = 0
					global.PlayerSpawn = "ShrineOfEarth_Outside"
					global.FadeProgress = 1
					global.FadeAlpha = 255
					global.Subtitle = ""
					room_goto(Room_Overworld);
				}
				else
				{
					ConfirmSkip = true
					alarm[0] = 3 * FrameRate
				}
				break;
			case Room_Cutscene_Tutorial:
				if ConfirmSkip == true
				{
					VideoManager_Stop()
					audio_play_sound(Settings_Accept,1000,false)
					SkipHintAlpha = 0
					global.FadeProgress = 1
					global.FadeAlpha = 255
					global.Subtitle = ""
					room_goto(Room_MainMenu)
				}
				else
				{
					ConfirmSkip = true
					alarm[0] = 3 * FrameRate
				}
				break;
		}
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