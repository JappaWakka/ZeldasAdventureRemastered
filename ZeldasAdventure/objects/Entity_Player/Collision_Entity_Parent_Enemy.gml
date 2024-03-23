if DamageDelay = 0
{
	DecreaseHP(other.Power - GetDefense())
	audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
	if global.DebugMode = false && global.CurrentHealth = 0 && global.PlayerIsDead = false
	{
		sprite_index = Zelda_Death
		image_speed = 1
		Audio_StopMusic() //Stop the music
		audio_play_sound(SFX_Zelda_Death,1000,false)
		global.FadeProgress = 0;
		global.FadeSpeed = 1
		DamageDelay = 8 * FrameRate
		global.PlayerIsDead = true
		global.HasResetEnemies = false
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