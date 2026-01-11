function UseSpell_JadeRing()
{
	if instance_number(Entity_Projectile_Player_JadeRing) = 0
	{
		var xOffset = 0
		var yOffset = 0
		switch Facing
		{
			case global.Directions.East :
				xOffset = 16
				break;
			case global.Directions.West :
				xOffset = -16
				break;
			case global.Directions.North :
				yOffset = -16
				break;
			case global.Directions.South :
				yOffset = 16
				break;
		}
		var JadeRingProjectile = instance_create_layer(x + xOffset,y + yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_JadeRing)
		audio_play_sound_relative(SFX_Use_JadeRing,600,false)
		global.CanUseSpell = true
	}
	else
	{
		global.CanUseSpell = false
	}
}