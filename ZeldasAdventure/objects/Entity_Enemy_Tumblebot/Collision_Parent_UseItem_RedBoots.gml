if EnemyState != EnemyStates.Damaged
{
	if distance_to_object(Entity_Player) <= AttackModeRange
	{
		speed = global.EnemySpeeds.Medium
	}
	else
	{
		speed = global.EnemySpeeds.Slow
	}
}
else
{
	speed =  global.EnemySpeeds.Still
}
move_bounce_all(false);
alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
