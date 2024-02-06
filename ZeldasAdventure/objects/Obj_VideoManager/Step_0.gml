/// @description Update the frame buffer and update SkipHintAlpha
if ConfirmSkip = true
{
	if SkipHintAlpha < 1
	{
		SkipHintAlpha += 0.05
	}
}
else
{
	if SkipHintAlpha > 0
	{
		SkipHintAlpha -= 0.05
	}
}

if (webm_exists(CurrentVideo))
{
	if (webm_is_playing(CurrentVideo))
	{
		VideoPosition = webm_get_playtime(CurrentVideo);
		webm_grab_frame_buffer(CurrentVideo, buffer_get_address(BufferVideo));
		switch room
		{
			case Room_Cutscene_Intro:
				global.Subtitle = Subtitle_Cutscene_Intro(VideoPosition)
				break;
			default:
				global.Subtitle = ""
				break;
		}
	}	
	else if (VideoPosition >= webm_get_duration(CurrentVideo))
	{
		VideoManager_Stop()
		
		switch room
		{
			case Room_Cutscene_Logos:
				room_goto(Room_Cutscene_Intro)
				break;
				
			case Room_Cutscene_Intro:
				global.FadeProgress = 1
				global.FadeAlpha = 255
				room_goto(Room_MainMenu)
				
			case Room_Cutscene_Shrine_Earth:
				global.PlayerSpawn = "Shrine1_Outside"
				global.FadeProgress = 1
				global.FadeAlpha = 255
				room_goto(Room_Overworld);
		
		}
		
	}
}