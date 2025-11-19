if IsPlayerOnSameTile() = true
{
	if HasSpoken = false
	{
		if Register_Registered("TwinFatherWelcomeToMyHome") = false and global.FadeAlpha = 0
		{
			if global.CurrentDialogue_Asset = Dialog_None
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_WelcomeToMyHome
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TwinFather,global.CurrentDialogue_Asset,500,false)
				if global.RemasteredMode = true
				{
					Register_Add("TwinFatherWelcomeToMyHome")
				}
				else
				{
					Register_Add("TwinFatherWelcomeToMyHome",true)
					HasSpoken = true
				}
			}
			
		}
		if global.CurrentDialogue_Asset = Dialog_None
		{
			if global.RemasteredMode = true and global.FadeAlpha = 0
			{
				if Register_Registered("TwinFatherWelcomeToMyHome") = true and Register_Registered("TwinFather_CoalAndRubies") = false
				{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_CoalAndRubies
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TwinFather,global.CurrentDialogue_Asset,500,false)
						Register_Add("TwinFather_CoalAndRubies")
						HasSpoken = true
				}
				else if Register_Registered("TwinFather_VaguelyFamiliar") = false
				{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_VaguelyFamiliar
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TwinFather,global.CurrentDialogue_Asset,500,false)
						Register_Add("TwinFather_VaguelyFamiliar",true)
						HasSpoken = true
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_WelcomeToMyHome
			{
				global.Subtitle = Subtitle_GreatWimbich_TwinFather_WelcomeToMyHome(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_CoalAndRubies
			{
				global.Subtitle = Subtitle_GreatWimbich_TwinFather_CoalAndRubies(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_TwinFather_VaguelyFamiliar
			{
				global.Subtitle = Subtitle_GreatWimbich_TwinFather_VaguelyFamiliar(AudioPosition)
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
		if Register_Registered("TwinFatherWelcomeToMyHome") = true and Register_Registered("TwinFather_CoalAndRubies") = false
		{
			HasSpoken = false
		}
	}
}
else
{
	HasSpoken = false
}