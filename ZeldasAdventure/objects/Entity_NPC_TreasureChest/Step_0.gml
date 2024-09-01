if IsPlayerOnSameTile() = true and global.CameraIsPanning = false
{
	if Register_Registered("TreasureChest") = false and Item_FindIndex(Spells.JadeRing,1) = -1
	{
		if instance_exists(Entity_Pickup_JadeRing) = false
		{
			global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_08_TreasureChest_WhatDoWeHaveHere
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			Register_Add("TreasureChest",true)
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
			if global.CurrentDialogue_Asset = Dialog_ShrineOfEarth_08_TreasureChest_WhatDoWeHaveHere
			{
				global.Subtitle = Subtitle_ShrineOfEarth_08_TreasureChest_WhatDoWeHaveHere(AudioPosition)
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
		if Register_Registered("TreasureChest") = true
		{
			if instance_exists(Entity_Pickup_JadeRing) = false and Item_FindIndex(Spells.JadeRing,1) = -1
			{
				instance_create_layer(4020,9268,"Items_BelowForeground",Entity_Pickup_JadeRing)
			}
		}
	}
}
else
{
	if Item_FindIndex(Spells.JadeRing,1) <> -1
	{
		instance_destroy()
	}
}
