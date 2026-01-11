function UseSpell_JadeAmulet()
{
	if instance_number(Entity_Projectile_Player_JadeAmulet) = 0
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
		var JadeAmulet_1 = instance_create_layer(x+xOffset,y+yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_JadeAmulet)
		JadeAmulet_1.direction = Facing - 12.5
		JadeAmulet_1.image_angle = Facing
		var JadeAmulet_2 = instance_create_layer(x+xOffset+xOffset,y+yOffset+yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_JadeAmulet)
		JadeAmulet_2.direction = Facing
		JadeAmulet_2.image_angle = Facing
		var JadeAmulet_3 = instance_create_layer(x+xOffset,y+yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_JadeAmulet)
		JadeAmulet_3.direction = Facing + 12.5
		JadeAmulet_3.image_angle = Facing
		audio_play_sound_relative(SFX_Use_JadeAmulet,600,false)
		global.CanUseSpell = true
	}
	else
	{
		global.CanUseSpell = false
	}
}