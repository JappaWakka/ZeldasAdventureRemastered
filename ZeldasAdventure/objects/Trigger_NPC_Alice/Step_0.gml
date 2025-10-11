if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if global.FadeAlpha = 0
		{
			if AliceDialogue = 0
			{
				if Register_Registered("Alice_Dialogue") = true and place_meeting(x,y,Entity_Player)
				{
					if global.CurrentDialogue_Asset = Dialog_None
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_RealNice
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
					}
				}
				else
				{
					if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_MyGoodness
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
					}
				}
			}
			if AliceDialogue = 1
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_PeculiarLittleTown
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
				}
			}
			if AliceDialogue = 2
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_IfYaLikeMusic
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
				}
			}
			if AliceDialogue = 3
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_NothingMoreToSay
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
				}
			}
			if AliceDialogue = 4
			{
				if global.CurrentDialogue_Asset = Dialog_None
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_RealNice
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
				}
			}
		}
	}
	else
	{
		if global.FadeAlpha = 0 and Register_Registered("Alice_Dialogue") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_PeculiarLittleTown
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Alice,global.CurrentDialogue_Asset,500,false)
				Register_Add("Alice_Dialogue")
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_MyGoodness
			{
				global.Subtitle = Subtitle_GreatWimbich_Alice_MyGoodness(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_PeculiarLittleTown
			{
				global.Subtitle = Subtitle_GreatWimbich_Alice_PeculiarLittleTown(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_IfYaLikeMusic
			{
				global.Subtitle = Subtitle_GreatWimbich_Alice_IfYaLikeMusic(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_NothingMoreToSay
			{
				global.Subtitle = Subtitle_GreatWimbich_Alice_NothingMoreToSay(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Alice_RealNice
			{
				global.Subtitle = Subtitle_GreatWimbich_Alice_RealNice(AudioPosition)
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
			switch AliceDialogue
			{
				case 0:
					AliceDialogue = 1
					break
				case 1:
					AliceDialogue = 2
					break
				case 2:
					AliceDialogue = 3
					break
				case 3:
					AliceDialogue = 4
					break
				case 4:
					Register_Add("Alice_Dialogue")
					instance_destroy()
					break
			}
			if Register_Registered("Alice_Dialogue") = true and global.FadeAlpha = 0
			{
				instance_destroy()
			}
			
		}
		else
		{
			if Register_Registered("Alice_Dialogue") = true and global.FadeAlpha = 0
			{
				instance_destroy()
			}
		}
	}
}