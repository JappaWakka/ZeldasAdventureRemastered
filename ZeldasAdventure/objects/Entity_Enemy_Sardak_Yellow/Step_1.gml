if Register_Registered("Llort_Defeated") = true
{
	instance_destroy()
}

if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case global.Directions.East :
			sprite_index = Sprite_Enemy_YellowSardak_East
			break;
		case global.Directions.South :
			sprite_index = Sprite_Enemy_YellowSardak_South
			break;
		case global.Directions.West :
			sprite_index = Sprite_Enemy_YellowSardak_West
			break;
		case global.Directions.North :
			sprite_index = Sprite_Enemy_YellowSardak_North
			break;
	}

	if Script_AggroRange() = true
	{
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