if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true
	{
		if speed = RegularSpeed
		{
			if global.EnemySoundPlaying = false
			{
				global.EnemySound = [EnemySoundName,x]
			}
		}
		speed = AggroSpeed
	}
	else
	{
		speed = RegularSpeed
	}
}

if EnemyState = EnemyStates.Attack
{
	run_alarm(ResetAlarm)
}

if ChangeDirection = true
{
	if EnemyState != EnemyStates.Damaged && EnemyState != EnemyStates.Attack
	{
		if Script_AggroRange() = true
		{
			if round(random_range(0,100)) <= MoveToPlayerChance
			{
				if Entity_Player.x < self.x
				{
					if Entity_Player.y < self.y
					{
						direction = choose(global.Directions.West,global.Directions.North);
					}
					else
					{
						direction = choose(global.Directions.West,global.Directions.South);
					}
				}
				else
				{
					if Entity_Player.y < self.y
					{
						direction = choose(global.Directions.East,global.Directions.North);
					}
					else
					{
						direction = choose(global.Directions.East,global.Directions.South);
					}
				}
			}
		}
		else
		{
			direction = choose(global.Directions.North,global.Directions.West,global.Directions.East,global.Directions.South);
		}
	}
	else
	{
		speed =  global.EnemySpeeds.Still
	}
	alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
	ChangeDirection = false;
}
