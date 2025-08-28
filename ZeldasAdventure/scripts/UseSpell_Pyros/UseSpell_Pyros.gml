function UseSpell_Pyros()
{
	if instance_number(Entity_Parent_Projectile_Player_Pyros) = 0
	{
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Parent_Projectile_Player_Pyros)
		audio_play_sound_relative(SFX_Use_Pyros,600,false)
		global.CanUseSpell = true
	}
	else
	{
		global.CanUseSpell = false
	}
}