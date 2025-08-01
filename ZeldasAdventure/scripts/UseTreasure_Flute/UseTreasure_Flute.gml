function UseTreasure_Flute()
{
	//Snake
	if global.CurrentTile.x = 9 && global.CurrentTile.y = 14 && instance_exists(Entity_Enemy_Rope) = true
	{
		audio_play_sound_relative(SFX_Use_Flute,999,false)
		global.CanControlPlayer = false;
		global.FluteUsed = true
		
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}