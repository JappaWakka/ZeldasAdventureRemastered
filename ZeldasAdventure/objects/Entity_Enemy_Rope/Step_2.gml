/// @description Player Uses the flute

if global.FluteUsed = true && audio_is_playing(SFX_Use_Flute) = false
{
	global.CanControlPlayer = true
	global.FluteUsed = false
	if IsPlayerOnSameTile_Enemy() = true
	{
		instance_create_layer(3632,3460,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		instance_create_layer(3652,3468,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		instance_create_layer(3676,3472,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		instance_create_layer(3700,3468,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		instance_create_layer(3720,3472,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		instance_create_layer(3740,3468,"Enemies_BelowForeground",Entity_Enemy_TallFire)
		Script_Trigger_PyrosSpell()
		instance_destroy()
		
	}
}