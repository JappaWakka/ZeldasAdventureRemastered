if IsPlayerOnSameTile() = true
{
	if Register_Registered("Llort_Defeated") = true
	{
		instance_destroy()
	}
	
	if Register_Registered("YellowSardak_Intro") = false and instance_exists(Entity_Enemy_Sardak_Yellow) = true and global.FadeAlpha = 0
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_20_YellowSardak_EnemyOfMyBoss
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("YellowSardak_Intro",true)
		}
		
	}
	if Register_Registered("YellowSardak_Outro") = false and instance_exists(Entity_Enemy_Sardak_Yellow) = false
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_20_YellowSardak_ShesComing
			global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
			Register_Add("YellowSardak_Outro",true)
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
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_20_YellowSardak_EnemyOfMyBoss
			{
				global.Subtitle = Subtitle_ShrineOfEarth_20_YellowSardak_EnemyOfMyBoss(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_20_YellowSardak_ShesComing
			{
				global.Subtitle = Subtitle_ShrineOfEarth_20_YellowSardak_ShesComing(AudioPosition)
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
		if Register_Registered("YellowSardak_Outro") = true
		{
			instance_destroy()
		}
	}
}