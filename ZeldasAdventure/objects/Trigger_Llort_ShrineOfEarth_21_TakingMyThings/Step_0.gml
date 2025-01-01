if IsPlayerOnSameTile() = true
{
	if Register_Registered("Llort_Defeated") = true
	{
		instance_destroy()
	}
	
	if Register_Registered("Llort_TakingMyThings") = false
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_21_Llort_TakingMyThings
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("Llort_TakingMyThings",true)
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
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_21_Llort_TakingMyThings
			{
				global.Subtitle = Subtitle_ShrineOfEarth_21_Llort_TakingMyThings(AudioPosition)
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