if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if global.FadeAlpha = 0
		{
			if Register_Registered("EricAndIan_Dialogue") = false and place_meeting(x,y,Entity_Player)
			{
				if HasTalked = false
				{
					if TwinsDialogue = 0
					{
						if global.CurrentDialogue_Asset = Dialog_None
						{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetTheTwins
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_EricAndIan,global.CurrentDialogue_Asset,500,false)
							HasTalked = true
						}
					}
					if TwinsDialogue = 1
					{
						if global.CurrentDialogue_Asset = Dialog_None
						{
							global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetOurFather
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_EricAndIan,global.CurrentDialogue_Asset,500,false)
							HasTalked = true
						}
					}
				}
			}
		}
	}
	else
	{
		if global.FadeAlpha = 0 and Register_Registered("EricAndIan_Dialogue") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetTheTwins
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_EricAndIan,global.CurrentDialogue_Asset,500,false)
				Register_Add("EricAndIan_Dialogue")
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetTheTwins
			{
				global.Subtitle = Subtitle_GreatWimbich_ErinAndIan_MeetTheTwins(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetOurFather
			{
				global.Subtitle = Subtitle_GreatWimbich_ErinAndIan_MeetOurFather(AudioPosition)
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
				switch TwinsDialogue
				{
					case 0:
						TwinsDialogue = 1
						break
					case 1:
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_ErinAndIan_MeetOurFather
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_EricAndIan,global.CurrentDialogue_Asset,500,false)
						TwinsDialogue = 2
						break
					case 2:
						Register_Add("EricAndIan_Dialogue")
						instance_destroy()
						break
				}
				if Register_Registered("EricAndIan_Dialogue") = true
				{
					instance_destroy()
				}	
			}		
		}
		else
		{
			if HasTalked = true
			{
				if Register_Registered("EricAndIan_Dialogue") = true and global.FadeAlpha = 0
				{
					instance_destroy()
				}
			}
		}
	}
}
else
{
	HasTalked = false
}