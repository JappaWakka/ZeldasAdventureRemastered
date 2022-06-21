//Change sprite
switch direction
{
	case 0 :
		sprite_index = Sprite_Enemy_Tumblebot_East
		break;
	case 270 :
		sprite_index = Sprite_Enemy_Tumblebot_South
		break;
	case 180 :
		sprite_index = Sprite_Enemy_Tumblebot_West
		break;
	case 90 :
		sprite_index = Sprite_Enemy_Tumblebot_North
		break;
}
if distance_to_object(Entity_Player) <= AttackModeRange
{
	MoveSpeed = global.EnemySpeeds.Medium
}
else
{
	MoveSpeed = global.EnemySpeeds.Slow
}
