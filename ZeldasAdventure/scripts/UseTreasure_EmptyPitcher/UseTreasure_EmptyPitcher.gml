function UseTreasure_EmptyPitcher()
{
	if global.CurrentTile.x = 4 && global.CurrentTile.y = 19
	{
		Item_Remove(Treasure.EmptyPitcher,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
			
		instance_create_layer(1632,4736,"Items_AboveForeground",Entity_Pickup_FullPitcher)
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}