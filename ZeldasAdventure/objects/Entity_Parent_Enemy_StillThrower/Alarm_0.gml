///@description Change Direction
if EnemyState = EnemyStates.Move
{
	ChangeDirection = true
}
alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
