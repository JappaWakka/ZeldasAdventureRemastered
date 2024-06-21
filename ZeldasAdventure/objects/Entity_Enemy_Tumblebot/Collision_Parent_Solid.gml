if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true
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
DistanceLeftToKnockBack = 0
move_bounce_all(false);
alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
