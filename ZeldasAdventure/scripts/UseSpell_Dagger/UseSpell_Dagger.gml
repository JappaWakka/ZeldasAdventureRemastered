function UseSpell_Dagger()
{
	if instance_number(Entity_Projectile_Player_Dagger) = 0
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
		var DaggerProjectile = instance_create_layer(x + xOffset,y + yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_Dagger)
		DaggerProjectile.direction = Facing
		DaggerProjectile.image_angle = Facing
		audio_play_sound_relative(SFX_Use_Dagger,600,false)
		global.CanUseSpell = true
	}
	else
	{
		global.CanUseSpell = false
	}
}