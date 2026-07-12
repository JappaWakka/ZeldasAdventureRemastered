
if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Spells.Feather,1) = -1
	{
		if global.CameraIsPanning = false
		{
			if Register_Registered("Waldensop_Intro") = false
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_22_Waldensop_GoodMorn
				global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
				Register_Add("Waldensop_Intro")
			}
			else
			{
				if Register_Registered("Waldensop_Feather") = false and Register_Registered("HasLeftWaldensopTile") = true
				{
					global.CurrentDialogue_Asset = Dialog_ForestOfTorian_22_Waldensop_Feather
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add("Waldensop_Feather")
				}
			}
			if IsMenuVisible() = false and audio_is_playing(global.CurrentDialogue_ID) = false
			{
				if Register_Registered("Waldensop_Gift") = false and Register_Registered("Waldensop_Feather") = true
				{
					if instance_exists(Entity_Pickup_Feather) = false
					{
						instance_create_layer(5224,2552,"Items_BelowForeground",Entity_Pickup_Feather)
						Register_Add("Waldensop_Gift",true)
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_22_Waldensop_GoodMorn
			{
				global.Subtitle = Subtitle_ForestOfTorian_22_Waldensop_GoodMorn(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_22_Waldensop_Feather
			{
				global.Subtitle = Subtitle_ForestOfTorian_22_Waldensop_Feather(AudioPosition)
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
	if Register_Registered("HasLeftWaldensopTile") = false
	{
		Register_Add("HasLeftWaldensopTile")
	}
	if Item_FindIndex(Spells.Feather,1) <> -1
	{
		instance_destroy()
	}
}
