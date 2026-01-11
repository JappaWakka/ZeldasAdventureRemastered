image_speed = 0
direction = Entity_Player.Facing
switch direction
{
	case global.Directions.East :
		sprite_index = Sprite_Projectile_Spell_JadeRing_WestEast;
		image_index = 0;
		break;
	case global.Directions.West :
		sprite_index = Sprite_Projectile_Spell_JadeRing_WestEast;
		image_index = 1;
		break;
	case global.Directions.North :
		sprite_index = Sprite_Projectile_Spell_JadeRing_NorthSouth;
		image_index = 0;
		break;
	case global.Directions.South :
		sprite_index = Sprite_Projectile_Spell_JadeRing_NorthSouth;
		image_index = 1;
		break;
}