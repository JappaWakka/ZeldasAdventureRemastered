//Change sprite
switch direction
{
	case 135 :
		sprite_index = Sprite_Enemy_Tumblebot_East
		break;
	case 225 :
		sprite_index = Sprite_Enemy_Tumblebot_South
		break;
	case 45 :
		sprite_index = Sprite_Enemy_Tumblebot_West
		break;
	case 315 :
		sprite_index = Sprite_Enemy_Tumblebot_North
		break;
}
if distance_to_object(Entity_Player) <= AttackModeRange
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
