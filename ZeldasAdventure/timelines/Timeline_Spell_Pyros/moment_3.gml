var xOffset1 = 0
var yOffset1 = 0
switch Entity_Player.Facing
{
	case global.Directions.East :
		xOffset1 = 28
		yOffset1 = 48
		break;
	case global.Directions.West :
		xOffset1 = -28
		yOffset1 = -48
		break;
	case global.Directions.North :
		xOffset1 = 48
		yOffset1 = -28
		break;
	case global.Directions.South :
		xOffset1 = -48
		yOffset1 = 28
		break;
}
	
var xOffset2 = 0
var yOffset2 = 0
switch Entity_Player.Facing
{
	case global.Directions.East :
		xOffset2 = 24
		yOffset2 = -24
		break;
	case global.Directions.West :
		xOffset2 = -24
		yOffset2 = 24
		break;
	case global.Directions.North :
		xOffset2 = -24
		yOffset2 = -24
		break;
	case global.Directions.South :
		xOffset2 = 24
		yOffset2 = 24
		break;
}

instance_create_layer(x+ xOffset1 + xOffset2,y + yOffset1 + yOffset2,"Temporary_BelowPlayer",Entity_Projectile_Player_Pyros)
	