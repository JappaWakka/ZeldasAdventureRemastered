if DamageDelay = 0
{
	DecreaseHP(other.Power - GetDefense())
	audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
	if global.DebugMode = false && global.CurrentHealth = 0 && IsDead = false
	{
		sprite_index = Zelda_Death
		image_speed = 1
		audio_stop_sound(global.CurrentMusic_Asset) //Stop the music
		audio_play_sound(SFX_Zelda_Death,1000,false)
		global.FadeProgress = 0;
		global.FadeSpeed = 1
		DamageDelay = 8 * room_speed
		IsDead = true
	}
	else
	{
		DamageDelay = 1 * room_speed
		if timeline_index = -1
		{
			timeline_index = Damage_Player;
			timeline_position = 0;
			timeline_running = true;
		}
	}
	
}