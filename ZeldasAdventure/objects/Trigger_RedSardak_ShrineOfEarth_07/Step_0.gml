if IsPlayerOnSameTile() = true
{
	if Register_Registered("Llort_Defeated") = true
	{
		instance_destroy()
	}
	
	if Register_Registered("RedSardak_Intro") = false and instance_exists(Entity_Enemy_Sardak_Red) = true and global.FadeAlpha = 0
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_07_RedSardak_NoThreat
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("RedSardak_Intro",true)
		}
		
	}
	if Register_Registered("RedSardak_Outro") = false and instance_exists(Entity_Enemy_Sardak_Red) = false
	{
		if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_07_RedSardak_NoThreat
		{
			audio_stop_sound(global.CurrentDialogue_ID)
			global.CurrentDialogue_Asset = Dialog_None
		}
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_07_RedSardak_FailedMission
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("RedSardak_Outro",true)
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
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_07_RedSardak_NoThreat
			{
				global.Subtitle = Subtitle_ShrineOfEarth_07_RedSardak_NoThreat(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_07_RedSardak_FailedMission
			{
				global.Subtitle = Subtitle_ShrineOfEarth_07_RedSardak_FailedMission(AudioPosition)
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
		if Register_Registered("RedSardak_Outro") = true
		{
			instance_destroy()
		}
	}
}