
if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Treasures.VialOfWind,0) = -1 
	{
		if global.CameraIsPanning = false
		{
			if Register_Registered("GlebbNoLongerThirsty") = true and Item_FindIndex(Treasures.VialOfWind,0) = -1
			{
				if instance_exists(Entity_Pickup_VialOfWind) = false
				{
					instance_create_layer(3696,5568,"Temporary_AbovePlayer",Entity_Pickup_VialOfWind)
					global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
				}
			}
			else
			{
				if Item_FindIndex(Treasures.FullPitcher,0) = -1 && Item_FindIndex(Treasures.EmptyPitcher,0) = -1
				{
					if instance_exists(Entity_Pickup_EmptyPitcher) = false
					{
						instance_create_layer(3680,5616,"Temporary_AbovePlayer",Entity_Pickup_EmptyPitcher)
						global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_BeforeFill
						global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					}
				}
				else
				{
					if IsMenuVisible() = false
					{
						if global.RemasteredMode = false and Entity_Player.IsAttacking = false
						{
							if input_check_pressed("action1") = true or input_check_pressed("action2") = true
							{
								if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasures.FullPitcher
								{
									Item_Remove(Treasures.FullPitcher,0);
									global.CurrentItem[1] = -1
									if instance_exists(Entity_Pickup_VialOfWind) = false
									{
										instance_create_layer(3696,5568,"Temporary_AbovePlayer",Entity_Pickup_VialOfWind)
										global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
										global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
									}
									Register_Add("GlebbNoLongerThirsty")
								}
							}
						}
						if global.RemasteredMode = true and Entity_Player.IsAttacking = false
						{
							if input_check_pressed("action2") = true
							{
								if Item_FindValue(global.CurrentTreasure,0) = Treasures.FullPitcher
								{
									Item_Remove(Treasures.FullPitcher,0);
									global.CurrentTreasure = -1
									if instance_exists(Entity_Pickup_VialOfWind) = false
									{
										instance_create_layer(3696,5568,"Items_AboveForeground",Entity_Pickup_VialOfWind)
										global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
										global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
									}
									Register_Add("GlebbNoLongerThirsty")
								}
							}
						}
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_BeforeFill
			{
				global.Subtitle = Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_AfterFill
			{
				global.Subtitle = Subtitle_PlainOfAndor_20_GlebbTheThirsty_AfterFill(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_WhenAttacked
			{
				global.Subtitle = Subtitle_PlainOfAndor_20_GlebbTheThirsty_WhenAttacked(AudioPosition)
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
	if Item_FindIndex(Treasures.VialOfWind,0) <> -1
	{
		instance_destroy()
	}
}
