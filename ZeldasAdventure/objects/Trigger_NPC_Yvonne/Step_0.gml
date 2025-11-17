if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if global.FadeAlpha = 0
		{
			if Register_Registered("Yvonne_Dialogue") = false and Item_FindIndex(Treasures.Flute,0) = -1
			{
				if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
				{
					global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_GiveFlute
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Yvonne,global.CurrentDialogue_Asset,500,false)
					Register_Add("Yvonne_Dialogue")
				}
			}
			else
			{
				if YvonneSings = false and place_meeting(x,y,Entity_Player)
				{
					if global.CurrentDialogue_Asset = Dialog_None
					{
						global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_Singing
						global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Yvonne,global.CurrentDialogue_Asset,500,false)
						YvonneSings = true
					}
				}
			}
		}
	}
	else
	{
		if global.FadeAlpha = 0 and Register_Registered("Yvonne_Dialogue") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_GiveFlute
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Yvonne,global.CurrentDialogue_Asset,500,false)
				Register_Add("Yvonne_Dialogue")
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
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_GiveFlute
			{
				global.Subtitle = Subtitle_GreatWimbich_Yvonne_GiveFlute(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_Yvonne_Singing
			{
				global.Subtitle = Subtitle_GreatWimbich_Yvonne_Singing(AudioPosition)
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
			if Register_Registered("Yvonne_Dialogue") = true
			{
				if Item_FindIndex(Treasures.Flute,0) = -1 and instance_exists(Entity_Pickup_Flute) = false
				{
					instance_create_layer(4415,3288,"Temporary_AbovePlayer",Entity_Pickup_Flute)
				}
				if YvonneSings = true
				{
					instance_destroy()
				}
			}
			
		}
		else
		{
			if Register_Registered("Yvonne_Dialogue") = true and global.FadeAlpha = 0
			{
				if Item_FindIndex(Treasures.Flute,0) = -1 and instance_exists(Entity_Pickup_Flute) = false
				{
					instance_create_layer(4415,3288,"Temporary_AbovePlayer",Entity_Pickup_Flute)
				}
				instance_destroy()
			}
		}
	}
}