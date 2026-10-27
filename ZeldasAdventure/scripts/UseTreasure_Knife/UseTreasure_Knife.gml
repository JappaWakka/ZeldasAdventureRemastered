function UseTreasure_Knife()
{
	if global.CurrentTile.x = 22 && global.CurrentTile.y = 21
	{
		Item_Remove(Treasures.Knife,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
			
		Register_Add(Registers.Knife_Used,true)
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}