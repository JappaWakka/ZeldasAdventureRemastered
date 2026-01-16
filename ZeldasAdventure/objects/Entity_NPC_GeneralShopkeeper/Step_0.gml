if IsPlayerOnSameTile() = true
{
	if Register_Registered("GeneralShopkeeper_Intro") = false
	{
		if global.RemasteredMode = true and Register_Registered("PurchasedBone") = true
		{
			global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_HowAreYou
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			Register_Add("GeneralShopkeeper_HowAreYou",true)
		}
		else
		{
			global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_HelloLittleOne
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		}
		Register_Add("GeneralShopkeeper_Intro",true)
		
	}
	else
	{
		if global.RemasteredMode = true and Register_Registered("LeftGeneralStore") = true
		{
			if Register_Registered("PurchasedBone") = false
			{
				if Register_Registered("GeneralShopkeeper_GoodsOnTable") = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_GoodsOnTheTable
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add("GeneralShopkeeper_GoodsOnTable",true)
				}
			}
			else
			{
				if Register_Registered("GeneralShopkeeper_HowAreYou") = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_HowAreYou
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add("GeneralShopkeeper_HowAreYou",true)
				}
			}
			Register_Remove("LeftGeneralStore")
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_HelloLittleOne
			{
				global.Subtitle = Subtitle_GreatWimbich_GeneralShopkeeper_HelloLittleOne(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_GoodsOnTheTable
			{
				global.Subtitle = Subtitle_GreatWimbich_GeneralShopkeeper_GoodsOnTheTable(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_HowAreYou
			{
				global.Subtitle = Subtitle_GreatWimbich_GeneralShopkeeper_HowAreYou(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_GeneralShopkeeper_ThatWasSmart
			{
				global.Subtitle = Subtitle_GreatWimbich_GeneralShopkeeper_ThatWasSmart(AudioPosition)
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
	Register_Add("LeftGeneralStore")
}