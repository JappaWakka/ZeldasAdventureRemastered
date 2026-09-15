if IsPlayerOnSameTile() = true
{
	if place_meeting(x,y,Entity_Player)
	{
		if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
		{
			if Register_Registered(Registers.SquireGrip_WelcomeToOurFairVillage) = false
			{
				global.CurrentDialogue_Asset = Dialog_Verna_SquireGrip_WelcomeToOurFairVillage
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_SquireGrip,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.SquireGrip_WelcomeToOurFairVillage)
				HasTalked = true
			}
			else if Register_Registered(Registers.Merribal_SecondSong) = false
			{
				global.CurrentDialogue_Asset = Dialog_Verna_Merribal_SecondSong
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Merribal,global.CurrentDialogue_Asset,500,false)
				if global.RemasteredMode = false
				{
					Register_Add(Registers.Merribal_SecondSong,true)
				}
				else
				{
					Register_Add(Registers.Merribal_SecondSong)
				}
				HasTalked = true
			}
			else if Register_Registered(Registers.Merribal_BeautifulWeather) = false and global.RemasteredMode = true
			{
				global.CurrentDialogue_Asset = Dialog_Verna_Merribal_BeautifulWeather
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Merribal,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.Merribal_BeautifulWeather,true)
				HasTalked = true
			}
		}
	}
	else
	{
		if global.CurrentDialogue_Asset != Dialog_Verna_SquireGrip_WelcomeToOurFairVillage and global.CurrentDialogue_Asset != Dialog_Verna_Merribal_FirstSong
		{
			HasTalked = false
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
			if global.CurrentDialogue_Asset = Dialog_Verna_Merribal_FirstSong
			{
				global.Subtitle = Subtitle_Verna_Merribal_FirstSong(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_Verna_Merribal_SecondSong
			{
				global.Subtitle = Subtitle_Verna_Merribal_SecondSong(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_Verna_Merribal_BeautifulWeather
			{
				global.Subtitle = Subtitle_Verna_Merribal_BeautifulWeather(AudioPosition)
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
		if Register_Registered(Registers.SquireGrip_WelcomeToOurFairVillage) = true and Register_Registered(Registers.Merribal_FirstSong) = false
		{
			global.CurrentDialogue_Asset = Dialog_Verna_Merribal_FirstSong
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Merribal,global.CurrentDialogue_Asset,500,false)
			Register_Add(Registers.Merribal_FirstSong)
			HasTalked = true
		}
	}
}
else
{
	HasTalked = false
}