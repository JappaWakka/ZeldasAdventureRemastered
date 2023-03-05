/// @description Update the frame buffer

if (webm_exists(CurrentVideo))
{
	if (webm_is_playing(CurrentVideo))
	{
		VideoPosition = webm_get_playtime(CurrentVideo);
		webm_grab_frame_buffer(CurrentVideo, buffer_get_address(BufferVideo));
		if room = Room_Cutscene_Intro
		{
			global.Subtitle = Subtitle_Cutscene_Intro(VideoPosition)
		}
	}	
	else if (VideoPosition >= webm_get_duration(CurrentVideo))
	{
		VideoManager_Stop()
		if room = Room_Cutscene_Logos
		{
			room_goto(Room_Cutscene_Intro)
		}
		else if room = Room_Cutscene_Intro
		{
			global.FadeProgress = 1
			global.FadeAlpha = 255
			room_goto(Room_MainMenu)
		}
	}
}