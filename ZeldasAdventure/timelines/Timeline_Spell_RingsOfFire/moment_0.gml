var xOffset = 0
var yOffset = 0
switch Entity_Parent_Projectile_Player_RingsOfFire.Facing
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
var RingOfFireProjectile1 = instance_create_layer(x + xOffset,y + yOffset,"Temporary_BelowPlayer",Entity_Projectile_Player_RingsOfFire)
RingOfFireProjectile1.direction = Entity_Parent_Projectile_Player_RingsOfFire.Facing