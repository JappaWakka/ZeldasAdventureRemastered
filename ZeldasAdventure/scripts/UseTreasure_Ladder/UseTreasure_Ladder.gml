function UseTreasure_Ladder()
{
	if global.CurrentTile.x = 7 && global.CurrentTile.y = 35
	{
		Item_Remove(Treasures.Ladder,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
			
		Register_Add("PlacedLadder")
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}