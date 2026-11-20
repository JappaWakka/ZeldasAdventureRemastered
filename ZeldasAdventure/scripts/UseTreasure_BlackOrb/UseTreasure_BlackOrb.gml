function UseTreasure_BlackOrb()
{
	if global.CurrentTile.x = 21 && global.CurrentTile.y = 21
	{
		Item_Remove(Treasures.BlackOrb,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
			
		Register_Add(Registers.BlackOrb_Placed)
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}