
if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Spells.Firestorm,1) = -1
	{
		if global.CameraIsPanning = false and IsMenuVisible() = false
		{
			if audio_is_playing(global.CurrentDialogue_ID) = false
			{
				if Register_Registered(Registers.BeggarWoman_Intro) = false
				{
					global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRubies
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.BeggarWoman_Intro,true)
				}
				else
				{
					if Register_Registered(Registers.BeggarWoman_Paid) = false
					{
						if global.RemasteredMode = false and Entity_Player.IsAttacking = false
						{
							if input_check_pressed("action1") = true or input_check_pressed("action2") = true
							{
								if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasures.Rubies and global.CurrentRubies >= 5
								{
									RemoveRubies(5);
									global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRubies
									global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
									Register_Add(Registers.BeggarWoman_Paid)
								}
								
							}
						}
						if global.RemasteredMode = true and Entity_Player.IsAttacking = false
						{
							if input_check_pressed("action2") = true
							{
								if global.CurrentRubies >= 5
								{
									RemoveRubies(5);
									global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRubies
									global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
									Register_Add(Registers.BeggarWoman_Paid)
								}
							}
						}
					}
					else
					{
						if instance_exists(Entity_Pickup_Firestorm) = false
						{
							instance_create_layer(3606,5232,"Items_AboveForeground",Entity_Pickup_Firestorm)
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_BeforeGiveRubies
			{
				global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_BeforeGiveRubies(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_AfterGiveRubies
			{
				global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_AfterGiveRubies(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_WhenAttacked
			{
				global.Subtitle = Subtitle_PlainOfAndor_13_BeggarWoman_WhenAttacked(AudioPosition)
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
		if sprite_index = Sprite_NPC_BeggarWoman_Angry
		{
			sprite_index = Sprite_NPC_BeggarWoman_Begging
			EnableAnimationAlarm = true
			Animating = false
			alarm[0] = irandom_range(AnimAlarm_Min,AnimAlarm_Max)
		}
	}
}
else
{
	if Item_FindIndex(Spells.Firestorm,1) <> -1
	{
		instance_destroy()
	}
}
