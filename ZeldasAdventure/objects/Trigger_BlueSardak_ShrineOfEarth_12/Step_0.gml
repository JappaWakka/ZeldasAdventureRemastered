if IsPlayerOnSameTile() = true
{
	if Register_Registered("Llort_Defeated") = true
	{
		instance_destroy()
	}
	
	if Register_Registered("BlueSardak_Intro") = false and instance_exists(Entity_Enemy_Sardak_Blue) = true and global.FadeAlpha = 0
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_12_BlueSardak_ThoughtIWasAlone
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("BlueSardak_Intro",true)
		}
		
	}
	if Register_Registered("BlueSardak_Outro") = false and instance_exists(Entity_Enemy_Sardak_Blue) = false and global.CurrentDialogue_Asset = Dialog_None
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_12_BlueSardak_CouldntStopHer
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("BlueSardak_Outro",true)
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
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_12_BlueSardak_ThoughtIWasAlone
			{
				global.Subtitle = Subtitle_ShrineOfEarth_12_BlueSardak_ThoughtIWasAlone(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_12_BlueSardak_CouldntStopHer
			{
				global.Subtitle = Subtitle_ShrineOfEarth_12_BlueSardak_CouldntStopHer(AudioPosition)
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
	else
	{
		if Register_Registered("BlueSardak_Outro") = true
		{
			instance_destroy()
		}
	}
}