if IsPlayerOnSameTile() = true
{
	if HasSpoken = false
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			if Register_Registered(Registers.Ethera_WhatFoolishHumanComesThisWay) = false and global.FadeAlpha = 0
			{
				global.CurrentDialogue_Asset = Dialog_UbatoHills_Ethera_WhatFoolishHumanComesThisWay
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Ethera,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.Ethera_WhatFoolishHumanComesThisWay,true)
			}
			else
			{
				if global.RemasteredMode = true
				{
					if Register_Registered(Registers.Ethera_BegoneLittleCreature) = false and global.FadeAlpha = 0
					{
						global.CurrentDialogue_Asset = Dialog_UbatoHills_Ethera_BegoneLittleCreature
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Ethera,global.CurrentDialogue_Asset,500,false)
						Register_Add(Registers.Ethera_BegoneLittleCreature)
					}
				}
			}
		}
		
		HasSpoken = true
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
			if global.CurrentDialogue_Asset = Dialog_UbatoHills_Ethera_WhatFoolishHumanComesThisWay
			{
				global.Subtitle = Subtitle_UbatoHills_Ethera_WhatFoolishHumanComesThisWay(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_UbatoHills_Ethera_BegoneLittleCreature
			{
				global.Subtitle = Subtitle_UbatoHills_Ethera_BegoneLittleCreature(AudioPosition)
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