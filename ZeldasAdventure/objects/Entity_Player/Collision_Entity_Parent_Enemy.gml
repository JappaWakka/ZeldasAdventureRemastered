if DamageDelay = 0
{
	global.CurrentHealth -= global.DamagePerHit * (other.Power * 2)
	audio_play_sound(SFX_Zelda_Damage,1000,false)
	DamageDelay = 1 * room_speed
}