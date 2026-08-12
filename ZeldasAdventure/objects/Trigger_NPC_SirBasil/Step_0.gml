if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Spells.Broadsword,1) = -1
	{
		if global.FadeAlpha = 0
		{
			if Register_Registered("SirBasil_Dialogue") = false
			{
				if HasTalked = false
				{
					if global.CurrentDialogue_Asset = Dialog_None
					{
						global.CurrentDialogue_Asset = Dialog_ForestOfTorian_05_SirBasil_HailPrincessZelda
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_SirBasil,global.CurrentDialogue_Asset,500,false)
						HasTalked = true
					}
				}
			}
			else if Item_FindIndex(Spells.Broadsword,1) = -1 and instance_exists(Entity_Pickup_Broadsword) = false
			{
				instance_create_layer(5938,1770,"Temporary_AbovePlayer",Entity_Pickup_Broadsword)
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_05_SirBasil_HailPrincessZelda
			{
				global.Subtitle = Subtitle_ForestOfTorian_05_SirBasil_HailPrincessZelda(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_05_Shurmak_YouSeemTired
			{
				global.Subtitle = Subtitle_ForestOfTorian_05_Shurmak_YouSeemTired(AudioPosition)
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
		if global.FadeAlpha = 0
		{
			if HasTalked = true and Register_Registered("SirBasil_Dialogue") = false
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_05_Shurmak_YouSeemTired
				global.CurrentDialogue_ID = audio_play_sound(global.CurrentDialogue_Asset,500,false)
				if Item_FindIndex(Spells.Broadsword,1) = -1 and instance_exists(Entity_Pickup_Broadsword) = false
				{
					instance_create_layer(5938,1770,"Temporary_AbovePlayer",Entity_Pickup_Broadsword)
				}
				Register_Add("SirBasil_Dialogue")
			}
			else
			{
				instance_destroy()
			}
			
		}
	}
}
else
{
	if Item_FindIndex(Spells.Broadsword,1) <> -1
	{
		instance_destroy()
	}
}