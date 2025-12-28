
if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if Register_Registered("KronThePegleg_Intro") = false
		{
			global.CurrentDialogue_Asset = Dialog_PlainOfDonora_02_KronThePegleg_EverybodyComesTo
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			Register_Add("KronThePegleg_Intro",true)
		}
		else
		{
			if Register_Registered("KronThePegleg_ItemForSale") = false
			{
				if Item_FindIndex(Treasures.LifePotion,0) = -1
				{
					global.CurrentDialogue_Asset = Dialog_PlainOfDonora_02_KronThePegleg_FineItemForSale
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add("KronThePegleg_ItemForSale",true)
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfDonora_02_KronThePegleg_EverybodyComesTo
			{
				global.Subtitle = Subtitle_PlainOfDonora_02_KronThePegleg_EverybodyComesTo(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfDonora_02_KronThePegleg_FineItemForSale
			{
				global.Subtitle = Subtitle_PlainOfDonora_02_KronThePegleg_FineItemForSale(AudioPosition)
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
		if Register_Registered("KronThePegleg_Intro") = true and Register_Registered("KronThePegleg_ItemForSale") = false
		{
			if Item_FindIndex(Treasures.LifePotion,0) = -1
			{
				global.CurrentDialogue_Asset = Dialog_PlainOfDonora_02_KronThePegleg_FineItemForSale
				global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
				Register_Add("KronThePegleg_ItemForSale",true)
			}
		}
	}
}
