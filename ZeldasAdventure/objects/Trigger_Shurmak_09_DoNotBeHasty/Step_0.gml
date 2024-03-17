if IsPlayerOnSameTile() = true
{
	if global.CameraIsPanning = false
	{
		if Item_FindIndex(Spells.Wand,1) <> -1
		{
			if Register_Registered("Shurmak_DoNotBeHasty") = true
			{
				Register_Remove("Shurmak_DoNotBeHasty")
			}
			instance_destroy()
		}
		else
		{
			if Register_Registered("Shurmak_DoNotBeHasty") = false
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_VisionHenge_09_Shurmak_DoNotBeHasty
					global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
					Register_Add("Shurmak_DoNotBeHasty")
				}
				
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
			if global.CurrentDialogue_Asset = Dialog_VisionHenge_09_Shurmak_DoNotBeHasty
			{
				global.Subtitle = Subtitle_VisionHenge_09_Shurmak_DoNotBeHasty(AudioPosition)
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