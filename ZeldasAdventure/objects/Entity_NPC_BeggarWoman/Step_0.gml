if Item_FindIndex(Spells.Firestorm,1) = -1 
{
	var IsDialoguePlaying = audio_is_playing(CurrentDialogue)
	if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
	y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
	{
		if global.CameraIsPanning = false
		{
			if HasSpoken = false
			{
				DialogueIndex = audio_play_sound_relative(Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees,500,false)
				HasSpoken = true
			}
			visible = true
			image_speed = d(ImageSpeed)
			if global.RemasteredMode = false and IsAttacking = false
			{
				if input_check_pressed("Action") = true or input_check_pressed("Special") = true
				{
					if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasure.Rubies
					{
						RemoveRubies(5);
						global.CurrentItem[1] = -1
						if instance_exists(Entity_Pickup_Firestorm) = false
						{
							instance_create_layer(3606,5232,"Items",Entity_Pickup_Firestorm)
							CurrentDialogue = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRupees
							DialogueIndex = audio_play_sound_relative(CurrentDialogue,500,false)
						}
					}
					
				}
			}
			if global.RemasteredMode = true and IsAttacking = false
			{
				if input_check_pressed("Action") = true
				{
					if Item_FindValue(global.CurrentTreasure,0) = Treasure.Rubies
					{
						RemoveRubies(5);
						global.CurrentTreasure = -1
							
						if instance_exists(Entity_Pickup_Firestorm) = false
						{
							instance_create_layer(3606,5232,"Items",Entity_Pickup_Firestorm)
							CurrentDialogue = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRupees
							DialogueIndex = audio_play_sound_relative(CurrentDialogue,500,false)
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
				if CurrentDialogue = Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees
				{
					global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees(AudioPosition)
				}
				if CurrentDialogue = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRupees
				{
					global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_AfterGiveRupees(AudioPosition)
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
	else
	{
		image_speed = 0
		image_index = 0
		visible = false
		if IsDialoguePlaying = true
		{
			audio_stop_sound(DialogueIndex)
			global.Subtitle = ""
			HasSpoken = true
		}
	}
}
else
{
	instance_destroy()
}
