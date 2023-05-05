var IsDialoguePlaying = audio_is_playing(CurrentDialogue)
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	if Item_FindIndex(Treasure.VialOfWind,0) = -1 
	{
		if global.CameraIsPanning = false
		{
			visible = true
			image_speed = d(ImageSpeed)
			if Item_FindIndex(Treasure.FullPitcher,0) = -1 && Item_FindIndex(Treasure.EmptyPitcher,0) = -1
			{
				if instance_exists(Entity_Pickup_EmptyPitcher) = false
				{
					instance_create_layer(3680,5616,"Items",Entity_Pickup_EmptyPitcher)
					DialogueIndex = audio_play_sound_relative(Dialog_PlainOfAndor_20_GlebbTheThirsty_BeforeFill,500,false)
				}
			}
			else
			{
				if Obj_InventoryManager.Alpha = 0 and Obj_InventoryManager.OpeningClosing = false
				{
					if global.RemasteredMode = false and Entity_Player.IsAttacking = false
					{
						if input_check_pressed("Action") = true or input_check_pressed("Special") = true
						{
							if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasure.FullPitcher
							{
								Item_Remove(Treasure.FullPitcher,0);
								global.CurrentItem[1] = -1
								if instance_exists(Entity_Pickup_VialOfWind) = false
								{
									instance_create_layer(3696,5568,"Items",Entity_Pickup_VialOfWind)
									CurrentDialogue = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
									DialogueIndex = audio_play_sound_relative(CurrentDialogue,500,false)
								}
							}
							
						}
					}
					if global.RemasteredMode = true and Entity_Player.IsAttacking = false
					{
						if input_check_pressed("Action") = true
						{
							if Item_FindValue(global.CurrentTreasure,0) = Treasure.FullPitcher
							{
								Item_Remove(Treasure.FullPitcher,0);
								global.CurrentTreasure = -1
								if instance_exists(Entity_Pickup_VialOfWind) = false
								{
									instance_create_layer(3696,5568,"Items",Entity_Pickup_VialOfWind)
									CurrentDialogue = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
									DialogueIndex = audio_play_sound_relative(CurrentDialogue,500,false)
								}
							}
						}
					}
				}
			}
		}
		else
		{
			visible = false
			image_speed = 0
		}
				
		
		if IsDialoguePlaying = true
		{
			if Obj_InventoryManager.Alpha = 0
			{
				if audio_is_paused(DialogueIndex) = true
				{
					audio_resume_sound(DialogueIndex)
				}
				var AudioPosition = audio_sound_get_track_position(DialogueIndex)
				if CurrentDialogue = Dialog_PlainOfAndor_20_GlebbTheThirsty_BeforeFill
				{
					global.Subtitle = Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
				}
				if CurrentDialogue = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
				{
					global.Subtitle = Subtitle_PlainOfAndor_20_GlebbTheThirsty_AfterFill(AudioPosition)
				}
			}
			else
			{
				if audio_is_paused(DialogueIndex) = false
				{
					audio_pause_sound(DialogueIndex)
				}
				global.Subtitle = ""
			}
		}
	}
}
else
{
	image_speed = 0
	image_index = 0
	visible = false
	if IsDialoguePlaying = true
	{
		audio_stop_sound(DialogueIndex)
		global.Subtitle = ""
	}
	if Item_FindIndex(Treasure.VialOfWind,0) <> -1
	{
		instance_destroy()
	}
}
