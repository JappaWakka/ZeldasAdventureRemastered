if DamageDelay = 0 && ImmuneToWand = false
{
	///Reduce HitPoints, play damage sound
	HitPoints -= GetPower() - Defense
	audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
	EnemyState = EnemyStates.Damaged
	StartDamageAnimation = true
	HitFromDirection = Entity_Player.Facing
	///Reset DamageDelay
	DamageDelay = 1 * FrameRate
}
