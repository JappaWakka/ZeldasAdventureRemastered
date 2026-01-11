function UseTreasure_Bone()
{
	if global.CurrentTile.x = 10 && global.CurrentTile.y = 12
	{
		Item_Remove(Treasures.Bone,0);
		if global.RemasteredMode = true
		{
			global.CurrentTreasure = -1
		}
		else
		{
			global.CurrentItem[1] = -1
		}
			
		instance_create_layer(4010,3060,"Items_AboveForeground",Entity_Pickup_ShortAxe)
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}