if DamageDelay = 0
{
	if Item_FindIndex(Treasure.MagicShield,0) = -1
	{
		///Reduce PitPoints, play damage sound
		DecreaseHP(other.Power - GetDefense())
		audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
		instance_destroy(other)
		DamageDelay = 1 * room_speed
		if timeline_index = -1
		{
			timeline_index = Damage_Player;
			timeline_position = 0;
			timeline_running = true;
		}
	}
	else ///When you have the Magic Shield
	{
		if other.Moving = true
		{
			///Reduce PitPoints, play damage sound
			DecreaseHP(other.Power - GetDefense())
			audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
			instance_destroy(other)
			DamageDelay = 1 * room_speed
			if timeline_index = -1
			{
				timeline_index = Damage_Player;
				timeline_position = 0;
				timeline_running = true;
			}
		}
	}
}
