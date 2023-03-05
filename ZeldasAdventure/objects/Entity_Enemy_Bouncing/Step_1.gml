//Change sprite
switch direction
{
	case global.Directions.NorthWest :
		sprite_index = Sprite_Enemy_Tumblebot_East
		break;
	case global.Directions.SouthWest :
		sprite_index = Sprite_Enemy_Tumblebot_South
		break;
	case global.Directions.NorthEast :
		sprite_index = Sprite_Enemy_Tumblebot_West
		break;
	case global.Directions.SouthEast :
		sprite_index = Sprite_Enemy_Tumblebot_North
		break;
}
if Script_AggroRange() = true
{
	speed = global.EnemySpeeds.Medium
}
else
{
	speed = global.EnemySpeeds.Medium
}

if ChangeDirection = true
{
	direction +=90
	
	ChangeDirection = false
}
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	direction += 90;
}
