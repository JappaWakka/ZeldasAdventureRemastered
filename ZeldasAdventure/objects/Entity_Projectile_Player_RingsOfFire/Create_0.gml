direction = Entity_Parent_Projectile_Player_RingsOfFire.Facing
switch direction
{
	case global.Directions.East :
		sprite_index = Sprite_Projectile_Spell_RingsOfFire_East;
		image_index = 0;
		break;
	case global.Directions.West :
		sprite_index = Sprite_Projectile_Spell_RingsOfFire_West;
		image_index = 1;
		break;
	case global.Directions.North :
		sprite_index = Sprite_Projectile_Spell_RingsOfFire_NorthSouth;
		image_index = 0;
		break;
	case global.Directions.South :
		sprite_index = Sprite_Projectile_Spell_RingsOfFire_NorthSouth;
		image_index = 1;
		break;
}