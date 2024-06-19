function UseTreasure_Candle()
{
	//Shrine of Earth
	if global.CurrentTile.x = 10 && global.CurrentTile.y = 32
	{
		Item_Remove(Treasures.Candle,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
		
		global.CandleUsed = true
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}