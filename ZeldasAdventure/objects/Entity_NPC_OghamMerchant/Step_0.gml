if IsPlayerOnSameTile() = true
{
	if Register_Registered("OghamMerchant_Intro") = false
	{
		if global.RemasteredMode = true && Item_FindIndex(Treasures.MagicShield,0) <> -1 && Item_FindIndex(Treasures.Candle,0) <> -1
		{
			global.CurrentDialogue_Asset = Dialog_ForestOfOgham_02_OghamMerchant_NothingToSell
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		}
		else
		{
			global.CurrentDialogue_Asset = Dialog_ForestOfOgham_02_OghamMerchant_PlentyToBuy
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		}
		
		Register_Add("OghamMerchant_Intro",true)
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_02_OghamMerchant_PlentyToBuy
			{
				global.Subtitle = Subtitle_ForestOfOgham_02_OghamMerchant_PlentyToBuy(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_02_OghamMerchant_NothingToSell
			{
				global.Subtitle = Subtitle_ForestOfOgham_02_OghamMerchant_NothingToSell(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_02_OghamMerchant_WisePurchase
			{
				global.Subtitle = Subtitle_ForestOfOgham_02_OghamMerchant_WisePurchase(AudioPosition)
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
