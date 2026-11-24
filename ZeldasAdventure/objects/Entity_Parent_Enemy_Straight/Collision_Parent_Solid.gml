if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true
	{
		speed = AggroSpeed
	}
	else
	{
		speed = RegularSpeed
	}
}
else
{
	speed = global.EnemySpeeds.Still
}
DistanceLeftToKnockBack = 0
ChangeDirection = true
