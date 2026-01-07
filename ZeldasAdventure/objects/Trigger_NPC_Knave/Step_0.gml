if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if global.FadeAlpha = 0
		{
			if Register_Registered("Knave_Intro") = false
			{
				if HasTalked = false and place_meeting(x,y,Entity_Player)
				{
					if KnaveDialogue = 0
					{
						if global.CurrentDialogue_Asset = Dialog_None
						{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_ShrineTakenLightly
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
							HasTalked = true
						}
					}
					if KnaveDialogue = 1
					{
						if global.CurrentDialogue_Asset = Dialog_None
						{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_JokeToPassTime
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
							HasTalked = true
						}
					}
				}
			}
			else
			{
				if global.FadeAlpha = 0 and Register_Registered("Knave_WatchOutForGanon") = false
				{
					if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_WatchOutForGanon
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
						Register_Add("Knave_WatchOutForGanon",true)
					}
				}
			}
		}
	}
	else
	{
		if global.FadeAlpha = 0 and Register_Registered("Knave_Intro") = false
		{
			if HasTalked = false and place_meeting(x,y,Entity_Player)
			{
				if KnaveDialogue = 0
				{
					if global.CurrentDialogue_Asset = Dialog_None
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_ShrineTakenLightly
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
						HasTalked = true
					}
				}
				if KnaveDialogue = 1
				{
					if global.CurrentDialogue_Asset = Dialog_None
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_JokeToPassTime
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
						HasTalked = true
					}
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_ShrineTakenLightly
			{
				global.Subtitle = Subtitle_GreatWimbich_Knave_ShrineTakenLightly(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_JokeToPassTime
			{
				global.Subtitle = Subtitle_GreatWimbich_Knave_JokeToPassTime(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_WatchOutForGanon
			{
				global.Subtitle = Subtitle_GreatWimbich_Knave_WatchOutForGanon(AudioPosition)
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
		if global.RemasteredMode = true and global.FadeAlpha = 0
		{
			if HasTalked = true
			{
				switch KnaveDialogue
				{
					case 0:
						KnaveDialogue = 1
						break
					case 1:
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_JokeToPassTime
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
						KnaveDialogue = 2
						break
					case 2:
						Register_Add("Knave_Intro")
						break
				}
			}
			if Register_Registered("Knave_Intro") = true and Register_Registered("Knave_WatchOutForGanon") = true
			{
				instance_destroy()
			}
		}
		else
		{
			switch KnaveDialogue
			{
				case 0:
					KnaveDialogue = 1
					break
				case 1:
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Knave_JokeToPassTime
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Knave,global.CurrentDialogue_Asset,500,false)
					KnaveDialogue = 2
					break
				case 2:
					Register_Add("Knave_Intro")
					break
			}
			if Register_Registered("Knave_Intro") = true
			{
				instance_destroy()
			}	
		}
	}
}
else
{
	HasTalked = false
}