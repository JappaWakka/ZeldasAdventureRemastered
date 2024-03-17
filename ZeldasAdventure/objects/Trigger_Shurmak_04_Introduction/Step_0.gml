if IsPlayerOnSameTile() = true
{
	if global.CameraIsPanning = false
	{
		if Register_Registered("Shurmak_Introduction") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None
			{
				global.CurrentDialogue_Asset = Dialog_VisionHenge_04_Shurmak_Introduction
				global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
				Register_Add("Shurmak_Introduction")
			}
			
		}
		
	}
	if global.CurrentDialogue_Asset != Dialog_None
	{
		if IsMenuVisible() = false
		{
			if audio_is_paused(global.CurrentDialogue_ID) = true
			{
				audio_resume_sound(global.CurrentDialogue_ID)
			}
			var AudioPosition = audio_sound_get_track_position(global.CurrentDialogue_ID)
			if global.CurrentDialogue_Asset = Dialog_VisionHenge_04_Shurmak_Introduction
			{
				global.Subtitle = Subtitle_VisionHenge_04_Shurmak_Introduction(AudioPosition)
			}
			
		}
		else
		{
			if audio_is_paused(global.CurrentDialogue_ID) = false
			{
				audio_pause_sound(global.CurrentDialogue_ID)
			}
			global.Subtitle = ""
		}
	}
}