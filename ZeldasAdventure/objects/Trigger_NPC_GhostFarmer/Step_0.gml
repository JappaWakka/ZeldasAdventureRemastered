if IsPlayerOnSameTile() = true
{
	if HasSpoken = false
	{
		if global.FadeAlpha = 0
		{
			if global.CurrentDialogue_Asset = Dialog_None
			{
				if Register_Registered("GhostFarmer_StayBack") = false
				{
					if global.RemasteredMode = true
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_StayBack
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmer,global.CurrentDialogue_Asset,500,false)
						Register_Add("GhostFarmer_StayBack")
					}
					else if place_meeting(x,y,Entity_Player)
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_StayBack
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmer,global.CurrentDialogue_Asset,500,false)
						Register_Add("GhostFarmer_StayBack",true)
						HasSpoken = true
					}
				}
				else if global.RemasteredMode = true
				{
					if Register_Registered("GhostFarmer_StillHere") = false
					{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_StillHere
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmer,global.CurrentDialogue_Asset,500,false)
							Register_Add("GhostFarmer_StillHere")
							HasSpoken = true
					}
					else
					{
						if place_meeting(x,y,Entity_Player) and Register_Registered("GhostFarmer_WaterShrine") = false
						{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_WaterShrine_Remastered
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmer,global.CurrentDialogue_Asset,500,false)
							Register_Add("GhostFarmer_WaterShrine")
							HasSpoken = true
						}
					}
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_GiveFlute
			{
				global.Subtitle = Subtitle_GreatWimbich_Yvonne_GiveFlute(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_Singing
			{
				global.Subtitle = Subtitle_GreatWimbich_Yvonne_Singing(AudioPosition)
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
		if global.RemasteredMode = true and global.FadeAlpha = 0
		{
			if Register_Registered("GhostFarmer_StayBack") = true and Register_Registered("GhostFarmer_StillHere") = false
			{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_StillHere
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmer,global.CurrentDialogue_Asset,500,false)
					Register_Add("GhostFarmer_StillHere")
					HasSpoken = false
			}
			
		}
	}
}