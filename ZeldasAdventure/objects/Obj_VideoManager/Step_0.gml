/// @description Update the frame buffer

if (video_exists(CurrentVideo))
{
	if (video_is_playing(CurrentVideo))
	{
		VideoPosition = video_get_playtime(CurrentVideo);
		video_grab_frame_buffer(CurrentVideo, buffer_get_address(BufferVideo));
		if room = Room_Cutscene_Intro
		{
			global.Subtitle = Subtitle_Cutscene_Intro(VideoPosition)
		}
	}	
	else if (VideoPosition >= video_get_duration(CurrentVideo))
	{
		VideoManager_Stop()
		if room = Room_Cutscene_Logos
		{
			room_goto(Room_Cutscene_Intro)
		}
		else if room = Room_Cutscene_Intro
		{
			room_goto(Room_Overworld)
		}
	}
}