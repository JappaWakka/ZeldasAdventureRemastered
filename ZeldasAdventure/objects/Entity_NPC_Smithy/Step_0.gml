if IsPlayerOnSameTile() = true
{
	if Register_Registered("Smithy_Intro") = false
	{
		global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_WhoGoesThere
		global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		
		Register_Add("Smithy_Intro",true)
	}
	else
	{
		if global.RemasteredMode = true and Register_Registered("LeftSmithy") = true
		{
			if Item_FindIndex(Treasures.Candle,0) = -1
			{
				if Register_Registered("Smithy_ChooseItemAndHurry") = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_ChooseItemAndHurry
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add("Smithy_ChooseItemAndHurry",true)
				}
			}
			Register_Remove("LeftSmithy")
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_WhoGoesThere
			{
				global.Subtitle = Subtitle_GreatWimbich_Smithy_WhoGoesThere(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_ChooseItemAndHurry
			{
				global.Subtitle = Subtitle_GreatWimbich_Smithy_ChooseItemAndHurry(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_CongratsOnFindingCoal
			{
				global.Subtitle = Subtitle_GreatWimbich_Smithy_CongratsOnFindingCoal(AudioPosition)
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
	Register_Add("LeftSmithy")
}