if MoveType <> "Bouncing"
{
	if MoveType = "Straight"
	{
		ChangeDirection = true
		
	}
	else if MoveType = "Diagonally"
	{
		ChangeDirection = true
	}
	if random_range(0,1) == 0
	{
		ChangeSpeed = true
	}
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
}
else
{
	ChangeDirection = true
}