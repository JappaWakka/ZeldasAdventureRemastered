function UseTreasure_LifePotion()
{
	if global.RemasteredMode = false
	{
		FillHP()
		Item_Remove(Treasures.LifePotion,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
	}
	else
	{
		if global.CurrentHealth < global.MaxHealth
		{
			FillHP()
			audio_play_sound_relative_toplayer(SFX_FillHearts,999,false)
			
			Item_Remove(Treasures.LifePotion,0);
			if global.RemasteredMode = true
			{
				global.CurrentTreasure = -1
			}
			else
			{
				global.CurrentItem[1] = -1
			}
		}
		else
		{
			audio_play_sound_relative(SFX_Use_Error,100,false)
		}
	}
							
}