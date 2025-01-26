if IsPlayerOnSameTile() = true
{	
	if Item_FindIndex(Spells.Wand,1) <> -1
	{
		if Register_Registered("Shurmak_DoNotRoam") = true
		{
			Register_Remove("Shurmak_DoNotRoam")
		}
		instance_destroy()
	}
	else
	{
		if Register_Registered("Shurmak_DoNotRoam") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None
			{
				global.CurrentDialogue_Asset = Dialog_VisionHenge_03_Shurmak_DoNotRoam
				global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
				Register_Add("Shurmak_DoNotRoam")
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
			if global.CurrentDialogue_Asset = Dialog_VisionHenge_03_Shurmak_DoNotRoam
			{
				global.Subtitle = Subtitle_VisionHenge_03_Shurmak_DoNotRoam(AudioPosition)
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