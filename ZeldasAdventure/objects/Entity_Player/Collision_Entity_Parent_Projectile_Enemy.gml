if DamageDelay = 0
{
	if Item_FindIndex(Treasures.MagicShield,0) = -1
	{
		///Reduce HitPoints, play damage sound
		DecreaseHP(other.Power - GetDefense())
		audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
		
		if global.DebugMode = false && global.CurrentHealth = 0 && IsDead = false
		{
			sprite_index = Zelda_Death
			image_speed = 1
			Audio_StopMusic()
			audio_play_sound(SFX_Zelda_Death,1000,false)
			global.FadeProgress = 0;
			global.FadeSpeed = 1
			DamageDelay = 8 * FrameRate
			IsDead = true
		}
		else
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
			if global.DebugMode = false && global.CurrentHealth = 0 && IsDead = false
			{
				sprite_index = Zelda_Death
				image_speed = 1
				Audio_StopMusic()
				audio_play_sound(SFX_Zelda_Death,1000,false)
				global.FadeProgress = 0;
				global.FadeSpeed = 1
				DamageDelay = 8 * FrameRate
				IsDead = true
			}
			else
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