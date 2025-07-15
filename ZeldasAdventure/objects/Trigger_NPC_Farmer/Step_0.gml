if IsPlayerOnSameTile() = true
{
	if HasSpoken = false
	{
		if Register_Registered("FarmerA") = false and global.FadeAlpha = 0
		{
			if global.CurrentDialogue_Asset = Dialog_None
			{
				global.CurrentDialogue_Asset = Dialog_MeadowOfSkotness_Farmer_HelloThereMiss
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Farmer,global.CurrentDialogue_Asset,500,false)
				Register_Add("FarmerA",true)
			}
			
		}
		if global.CurrentDialogue_Asset = Dialog_None
		{
			if global.RemasteredMode = true and global.FadeAlpha = 0
			{
				if Register_Registered("FarmerA") = true
				{
						Register_Remove("FarmerA",true)
						global.CurrentDialogue_Asset = Dialog_MeadowOfSkotness_Farmer_WhatBringsYouThisWay
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Farmer,global.CurrentDialogue_Asset,500,false)
						Register_Add("FarmerB",true)
				}
				else if Register_Registered("FarmerB") = true
				{
						Register_Remove("FarmerB",true)
						global.CurrentDialogue_Asset = Dialog_MeadowOfSkotness_Farmer_HelloThereMiss
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Farmer,global.CurrentDialogue_Asset,500,false)
						Register_Add("FarmerA",true)
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
			if global.CurrentDialogue_Asset = Dialog_MeadowOfSkotness_Farmer_HelloThereMiss
			{
				global.Subtitle = Subtitle_MeadowOfSkotness_Farmer_HelloThereMiss(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_MeadowOfSkotness_Farmer_WhatBringsYouThisWay
			{
				global.Subtitle = Subtitle_MeadowOfSkotness_Farmer_WhatBringsYouThisWay(AudioPosition)
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