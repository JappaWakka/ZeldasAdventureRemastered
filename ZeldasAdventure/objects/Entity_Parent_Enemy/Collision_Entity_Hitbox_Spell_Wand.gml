if DamageDelay = 0
{
	///Reduce PitPoints, play damage sound
	HitPoints -= global.BaseAttackDamage * global.Power
	audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
	EnemyState = EnemyStates.Damaged
	StartDamageAnimation = true
	HitFromDirection = Entity_Player.Facing
	///Reset DamageDelay
	DamageDelay = 1 * room_speed
}