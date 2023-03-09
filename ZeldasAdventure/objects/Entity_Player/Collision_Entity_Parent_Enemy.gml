if DamageDelay = 0
{
	DecreaseHP(other.Power - GetDefense())
	audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
	DamageDelay = 1 * room_speed
	if timeline_index = -1
	{
		timeline_index = Damage_Player;
		timeline_position = 0;
		timeline_running = true;
	}
}