if IsPlayerOnSameTile() = true
{
	if HasSpoken = false and global.FadeAlpha = 0
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			if Register_Registered("Lounger_HiThere") = false
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_HiThere
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Lounger,global.CurrentDialogue_Asset,500,false)
					Register_Add("Lounger_HiThere")
					HasSpoken = true
				}
				
			}
			else
			{
				if Register_Registered("Lounger_DontWannaSeeYou") = false
				{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_DontWannaSeeYou
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Lounger,global.CurrentDialogue_Asset,500,false)
						Register_Add("Lounger_DontWannaSeeYou")
						HasSpoken = true
				}
				else if Register_Registered("Lounger_GoAway") = false and global.RemasteredMode = true
				{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_GoAway
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Lounger,global.CurrentDialogue_Asset,500,false)
						Register_Add("Lounger_GoAway",true)
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_HiThere
			{
				global.Subtitle = Subtitle_GreatWimbich_Lounger_HiThere(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_DontWannaSeeYou
			{
				global.Subtitle = Subtitle_GreatWimbich_Lounger_DontWannaSeeYou(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Lounger_GoAway
			{
				global.Subtitle = Subtitle_GreatWimbich_Lounger_GoAway(AudioPosition)
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
else
{
	HasSpoken = false
}