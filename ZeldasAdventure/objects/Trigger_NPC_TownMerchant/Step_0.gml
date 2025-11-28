if IsPlayerOnSameTile() = true
{
	if place_meeting(x,y,Entity_Player)
	{
		if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
		{
			if Register_Registered("TownMerchant_ForThirtySuns") = false
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_TownMerchant_ForThirtySuns
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TownMerchant,global.CurrentDialogue_Asset,500,false)
				if global.RemasteredMode = true
				{
					Register_Add("TownMerchant_ForThirtySuns")
					HasTalked = true
				}
				else
				{
					Register_Add("TownMerchant_ForThirtySuns",true)
					HasTalked = true
				}
			}
			else if Register_Registered("TownMerchant_KindaTiredToday") = false and global.RemasteredMode = true
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_TownMerchant_KindaTiredToday
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TownMerchant,global.CurrentDialogue_Asset,500,false)
				Register_Add("TownMerchant_KindaTiredToday",true)
				HasTalked = true
			}
		}
	}
	else
	{
		HasTalked = false
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_TownMerchant_ForThirtySuns
			{
				global.Subtitle = Subtitle_GreatWimbich_TownMerchant_ForThirtySuns(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_TownMerchant_KindaTiredToday
			{
				global.Subtitle = Subtitle_GreatWimbich_TownMerchant_KindaTiredToday(AudioPosition)
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
	HasTalked = false
}