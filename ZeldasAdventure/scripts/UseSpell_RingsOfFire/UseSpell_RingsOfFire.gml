function UseSpell_RingsOfFire()
{
	if instance_number(Entity_Parent_Projectile_Player_RingsOfFire) = 0
	{
		var RingsOfFireProjectiles = instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Parent_Projectile_Player_RingsOfFire)
		RingsOfFireProjectiles.Facing = Facing
		audio_play_sound_relative(SFX_Use_RingsOfFire,600,false)
		global.CanUseSpell = true
	}
	else
	{
		global.CanUseSpell = false
	}
}