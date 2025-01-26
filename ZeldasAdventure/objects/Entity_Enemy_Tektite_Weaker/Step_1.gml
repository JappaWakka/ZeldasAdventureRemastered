if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true and ReturnToPoint = false
	{
		if speed = RegularSpeed
		{
			if global.EnemySoundPlaying = false
			{
				if global.EnemySound[0] != -1 and global.EnemySound[1] != -1
				{
					global.EnemySound = [EnemySoundName,x]
				}
				else
				{
					if irandom_range(0,100) <= 50
					{
						global.EnemySound = [EnemySoundName,x]
					}
				}
			}
		}
		speed = AggroSpeed
	}
	else
	{
		if EnemyState != EnemyStates.Idle
		{
			speed = RegularSpeed
		}
	}
}

if ReturnToPoint = false
{
	if ChangeDirection = true
	{
		if EnemyState != EnemyStates.Damaged
		{
			EnemyChangeDirection_Straight()
		}
		else
		{
			speed =  global.EnemySpeeds.Still
		}
		alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
		ChangeDirection = false;
	}
}
else
{
	if EnemyState != EnemyStates.Damaged
	{
		if ReturnPointPosition[0] <> -1 or ReturnPointPosition[1] <> -1
		{
			EnemyState = EnemyStates.Move
			speed = RegularSpeed
			
			if ReturnPointPosition[0] < x - 0.6 and ReturnPointPosition[0] <> -1
			{
				direction = global.Directions.West
			}
			else if ReturnPointPosition[0] > x + 0.6 and ReturnPointPosition[0] <> -1
			{
				direction = global.Directions.East
			}
			else
			{
				if ReturnPointPosition[0] <> -1
				{
					x = ReturnPointPosition[0]
					ReturnPointPosition[0] = -1
				}
				if ReturnPointPosition[1] < y  - 0.6 and ReturnPointPosition[1] <> -1
				{
					direction = global.Directions.North;
				}
				else if ReturnPointPosition[1] > y + 0.6 and ReturnPointPosition[1] <> -1
				{
					direction = global.Directions.South;
				}
				else
				{
					if ReturnPointPosition[1] <> -1
					{
						y = ReturnPointPosition[1]
						ReturnPointPosition[1] = -1
					}
				}
			}
		}
		else
		{
			EnemyState = EnemyStates.Idle
			speed = global.EnemySpeeds.Still
			image_speed = 0
		}
	}
}
