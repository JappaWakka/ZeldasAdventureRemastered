if DamageDelay = 0
{
	if Item_FindIndex(Treasures.MagicShield,0) = -1
	{
		///Reduce HitPoints, play damage sound
		DecreaseHP(other.Power - GetDefense())
		audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
		
		if PlayerDeath_Start() = false // Check if player is dead, if not start damage animation
		{		
			DamageDelay = 1 * FrameRate
			if timeline_index = -1
			{
				timeline_index = Damage_Player;
				timeline_position = 0;
				timeline_running = true;
			}
		}
	}
	else ///When you have the Magic Shield
	{
		if Moving = true
		{
			///Reduce HitPoints, play damage sound
			DecreaseHP(other.Power - GetDefense())
			audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
			instance_destroy(other)
			
			if PlayerDeath_Start() = false // Check if player is dead, if not start damage animation
			{
				DamageDelay = 1 * FrameRate
				if timeline_index = -1
				{
					timeline_index = Damage_Player;
					timeline_position = 0;
					timeline_running = true;
				}
			}
		}
	}
}
instance_destroy(other)