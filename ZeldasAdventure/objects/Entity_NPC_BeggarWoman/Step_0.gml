
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	if Item_FindIndex(Spells.Firestorm,1) = -1 
	{
		if global.CameraIsPanning = false
		{
			if Register_FindIndex("HasPaidBeggarWoman") = -1
			{
				if HasSpoken = false
				{
					global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					HasSpoken = true
				}
			}
			visible = true
			image_speed = d(ImageSpeed)
			if Obj_InventoryManager.Alpha = 0 and Obj_InventoryManager.OpeningClosing = false and audio_is_playing(global.CurrentDialogue_ID) = false
			{
				if Register_FindIndex("HasPaidBeggarWoman") = -1
				{
					if global.RemasteredMode = false and Entity_Player.IsAttacking = false
					{
						if input_check_pressed("action") = true or input_check_pressed("special") = true
							{
								if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasure.Rubies and global.CurrentRubies >= 5
								{
									RemoveRubies(5);
									global.CurrentItem[1] = -1
									Register_Add("HasPaidBeggarWoman")
								}
								
							}
					}
					if global.RemasteredMode = true and Entity_Player.IsAttacking = false
					{
						if input_check_pressed("action") = true
						{
							if Item_FindValue(global.CurrentTreasure,0) = Treasure.Rubies and global.CurrentRubies >= 5
							{
								RemoveRubies(5);
								global.CurrentTreasure = -1
								Register_Add("HasPaidBeggarWoman")
							}
						}
					}
				}
				else
				{
					if instance_exists(Entity_Pickup_Firestorm) = false
						{
							instance_create_layer(3606,5232,"Items",Entity_Pickup_Firestorm)
							global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRupees
							global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
						}
				}
			}
		}
		else
		{
			visible = false
			image_speed = 0
		}
				
		
		if global.CurrentDialogue_Asset != Dialog_None
		{
			if Obj_InventoryManager.Alpha = 0
			{
				if audio_is_paused(global.CurrentDialogue_ID) = true
				{
					audio_resume_sound(global.CurrentDialogue_ID)
				}
				var AudioPosition = audio_sound_get_track_position(global.CurrentDialogue_ID)
				if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees
				{
					global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees(AudioPosition)
				}
				if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRupees
				{
					global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_AfterGiveRupees(AudioPosition)
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
}
else
{
	image_speed = 0
	image_index = 0
	visible = false
	if Item_FindIndex(Spells.Firestorm,1) <> -1 
	{
		instance_destroy()
	}
}
