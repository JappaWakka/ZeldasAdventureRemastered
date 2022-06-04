if MoveType <> EnemyMoveTypes.Bouncing
{
	if MoveType = EnemyMoveTypes.Straight or MoveType = EnemyMoveTypes.Diagonally
	{
		ChangeDirection = true
	}
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
}
else
{
	ChangeDirection = true
}