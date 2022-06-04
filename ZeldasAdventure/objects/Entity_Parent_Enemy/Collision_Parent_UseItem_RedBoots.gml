if MoveType = EnemyMoveTypes.Straight or MoveType = EnemyMoveTypes.Diagonally
{
	move_bounce_all(false);
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
}
else if MoveType = "Bouncing"
{
	move_bounce_all(false);
}