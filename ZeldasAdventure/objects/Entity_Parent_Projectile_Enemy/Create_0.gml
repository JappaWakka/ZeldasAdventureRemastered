if ProjectileDirection = "TowardsPlayer"
{
	if instance_exists(Entity_Player) = true
	{
		direction = point_direction(x,y,Entity_Player.x,Entity_Player.y)
	}
	else
	{
		SetDirectionLater = true
	}
}