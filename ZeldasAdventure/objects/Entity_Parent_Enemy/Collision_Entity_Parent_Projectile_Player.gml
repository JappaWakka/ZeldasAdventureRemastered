if DamageDelay = 0
{
	///Reduce HitPoints, play damage sound
	HitPoints -= other.Power - Defense
	audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
	EnemyState = EnemyStates.Damaged
	StartDamageAnimation = true
	HitFromDirection = other.direction
	if other.DestroyOnEnemyImpact = true
	{
		instance_destroy(other)
	}
	///Reset DamageDelay
	DamageDelay = 1 * room_speed
}
