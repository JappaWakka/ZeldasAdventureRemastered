if DamageDelay = 0
{
	///Reduce PitPoints, play damage sound
	HitPoints -= global.BaseAttackDamage * global.Power
	audio_play_sound(SFX_Enemy_Damage,1000,false)
	
	StartDamageAnimation = true
	
	///Reset DamageDelay
	DamageDelay = 1 * room_speed
}
