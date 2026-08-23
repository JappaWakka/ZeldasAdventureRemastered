if IsPlayerOnSameTile() = true
{
	var BoughtAllItems = false
	if Item_FindIndex(Spells.RingsOfFire,1) <> -1 and
	Item_FindIndex(Spells.TurquoiseRing,1) <> -1 and
	Item_FindIndex(Spells.JadeAmulet,1) <> -1
	{
		BoughtAllItems = true
	}
	if Register_Registered(Registers.MadameKriggle_Intro) = false
	{
		if global.RemasteredMode = true
		{
			if BoughtAllItems = false
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_ApproachedAtLast
				global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			}
			else
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_WonderfulToSeeYou
				global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.MadameKriggle_WonderfulToSeeYou,true)
			}
			Register_Add(Registers.MadameKriggle_Intro)
		}
		else
		{
			global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_ApproachedAtLast
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			Register_Add(Registers.MadameKriggle_Intro,true)
		}
		
	}
	else
	{
		if global.RemasteredMode = true and Register_Registered(Registers.LeftMagicStore) = true
		{
			if BoughtAllItems = false
			{
				if Register_Registered(Registers.MadameKriggle_TouchWhatYouWantToUse) = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_TouchWhatYouWantToUse
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.MadameKriggle_TouchWhatYouWantToUse,true)
				}
				else if Register_Registered(Registers.MadameKriggle_WonderfulToSeeYou) = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_WonderfulToSeeYou
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.MadameKriggle_WonderfulToSeeYou,true)
				}
			}
			else
			{
				if Register_Registered(Registers.MadameKriggle_WonderfulToSeeYou) = false
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_WonderfulToSeeYou
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.MadameKriggle_WonderfulToSeeYou,true)
				}
			}
			Register_Remove(Registers.LeftMagicStore)
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_ApproachedAtLast
			{
				global.Subtitle = Subtitle_GreatWimbich_MadameKriggle_ApproachedAtLast(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_TouchWhatYouWantToUse
			{
				global.Subtitle = Subtitle_GreatWimbich_MadameKriggle_TouchWhatYouWantToUse(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_WonderfulToSeeYou
			{
				global.Subtitle = Subtitle_GreatWimbich_MadameKriggle_WonderfulToSeeYou(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_MadameKriggle_WiseChoice
			{
				global.Subtitle = Subtitle_GreatWimbich_MadameKriggle_WiseChoice(AudioPosition)
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
	Register_Add(Registers.LeftMagicStore)
}